/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */


livro(osMaias).
autor(e�adeQueir�s).
nacionalidade(portugu�s).
nacionalidade(ingl�s).
tipo(romance).
tipo(ficcao).
tipolivro(osMaias, romance).
escreveu(e�adeQueir�s, osMaias).
natural(e�adeQueir�s,portugu�s).

autorptRomance(X) :- escreveu(X, Y), tipolivro(Y,romance), natural(X,portugu�s).