## В рамках задачи выполнялось ознакомление и работа с библиотекой mappedbus. 
### Результат работы программы:
#### Запускается 2 ObjectWriter, которые пишут данные в memory mapped файл. После этого запускается ObjectReader, считывающий данные из этого файла, при этом выводя данные в консоль:

Read: PriceUpdate [source=0, price=0, quantity=0], hasRecovered=true\
Read: PriceUpdate [source=0, price=2, quantity=4], hasRecovered=true\
Read: PriceUpdate [source=1, price=0, quantity=0], hasRecovered=true\
Read: PriceUpdate [source=0, price=4, quantity=8], hasRecovered=true\
Read: PriceUpdate [source=1, price=2, quantity=4], hasRecovered=true\
Read: PriceUpdate [source=0, price=6, quantity=12], hasRecovered=true\
Read: PriceUpdate [source=1, price=4, quantity=8], hasRecovered=true\
Read: PriceUpdate [source=0, price=8, quantity=16], hasRecovered=true\
Read: PriceUpdate [source=1, price=6, quantity=12], hasRecovered=true\
Read: PriceUpdate [source=0, price=10, quantity=20], hasRecovered=true\
Read: PriceUpdate [source=1, price=8, quantity=16], hasRecovered=true\
Read: PriceUpdate [source=0, price=12, quantity=24], hasRecovered=true\
Read: PriceUpdate [source=1, price=10, quantity=20], hasRecovered=true\
Read: PriceUpdate [source=0, price=14, quantity=28], hasRecovered=true\
Read: PriceUpdate [source=1, price=12, quantity=24], hasRecovered=true
