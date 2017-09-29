/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */


comprou(joao, honda).
comprou(joao, uno).

ano(honda, 1997). 
ano(uno, 1998).

valor(honda, 20000).
valor(uno, 7000). 

subtrai10(X,Y) :- Y is X-10.
pode_vender(Pessoa,Carro,Current) :- comprou(Pessoa,Carro), ano(Carro, X), valor(Carro, Y), subtrai10(Current,Z) , X < Z, Y<10000.