const express = require('express');
const redis = require('redis');

const app = express();

const client = redis.createClient({
    host: 'redis',
    port: 6379
});

client.set('visitCounter', 0);

app.get('/', (req, res) => {
    client.get('visitCounter', (err, visitCounter) =>
    {
        res.send('Visits Counter :' + visitCounter);
        client.set('visitsCounter', parseInt(visitCounter) +1)
    })
})

app.listen(8080, () => {
    console.log('Listening on port 8080');
})