/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */


aluno(joao, paradigmas).
aluno(maria, paradigmas).
aluno(joel, lab2).
aluno(joel, estruturas).

frequenta(joao, feup).
frequenta(maria, feup).
frequenta(joel, ist).

professor(carlos, paradigmas).
professor(ana_paula, estruturas).
professor(pedro, lab2).

funcionario(pedro, ist).
funcionario(ana_paula, feup).
funcionario(carlos, feup). 

alunoDe(X,Y) :- aluno(X,Z), professor(Y,Z).

pessoaUniversidade(X, Y) :- frequenta(X,Y); funcionario(X,Y).

colega(X,Y) :- aluno(X,Z), aluno(Y,Z) , X\=Y; frequenta(X,Z), frequenta(Y,Z), X\=Y; funcionario(X,Z), funcionario(Y,Z), X\=Y.