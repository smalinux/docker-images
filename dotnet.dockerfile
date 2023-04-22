##
## NOTE: I didn't tested this file. because I don't have 
##   have .net core
## 
# First stage: base image
#-----------------------

# OS
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
# working dir
WORKDIR /source

# copy csproj, important file contains some configrations
COPY *.csproj .

# get all dep, Google: "dotnet restore"
RUN dotnet restore

# copy & publish app files
COPY . .
RUN dotnet publish -c release -o /app

# Final stage: run
FROM mcr.microsoft.com/dotnet/aspnet:5.0
# working dir
WORKDIR /app
COPY --from=build /app .

ENTRYPOINT [ "dotnet", "hrapp.dll" ]