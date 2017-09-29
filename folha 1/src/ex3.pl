/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */


livro(osMaias).
autor(eçadeQueirós, romance).
autor(eçadeQueirós, ficcao).
nacionalidade(português).
nacionalidade(inglês).
tipo(romance).
tipo(ficcao).
tipolivro(osMaias, romance).
escreveu(eçadeQueirós, osMaias).
natural(eçadeQueirós,português).

autorptRomance(X) :- escreveu(X, Y), tipolivro(Y,romance), natural(X,português).

autortipo_eoutro(X, Y) :- autor(X, Y), autor(X, Z), Y\=Z.