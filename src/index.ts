import * as Express from 'express';

const app = Express();
const listenPort = 3000;

app.get('/*', (req, res) => {
  return res.contentType('text').send(`The time is ${new Date().toLocaleString()}`);
})

app.listen(listenPort, () => {
  console.log('Listening on port', listenPort);
})
