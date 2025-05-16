## В рамках задачи выполнялось ознакомление и работа с Java IPC. Созданы клиент и сервер, которые обмениваются между собой сообщениями через socket.

### Результат работы программы сервера:
Server is running and waiting for connections...\
New client connected: Socket[addr=/127.0.0.1,port=54131,localport=12346]\
User 1 connected.\
New client connected: Socket[addr=/127.0.0.1,port=54135,localport=12346]\
User 2 connected.\
[1]: 1\
[2]: 2

### Результат работы программы клиента-1:
Connected to the chat server!\
Enter your username:\
1\
Welcome to the chat, 1!\
Type Your Message\
1\
[2]: 2

### Результат работы программы клиента-2:
Connected to the chat server!\
Enter your username:\
2\
Welcome to the chat, 2!\
Type Your Message\
[1]: 1\
2

##### Как видно из результатов, процессы-клиенты и сервер взаимодействуют корректно, выводя сообщения.