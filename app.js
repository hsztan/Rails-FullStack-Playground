var net = require('net');
var server = net.createServer();
const PORT = 3000;
const HOST = '127.0.0.1';

server.listen(PORT, HOST, () => {
  console.log(`TCP server listening on ${HOST}:${PORT}`);
});

server.on('connection', (socket) => {
  console.log('Client connected');
  socket.on('data', (data) => {
    console.log(data.toString());
  });
  socket.on('end', () => {
    console.log('Client disconnected');
  });
});
