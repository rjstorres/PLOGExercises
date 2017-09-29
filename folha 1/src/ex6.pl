/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */


passaro(tweety).

peixe(goldie).

minhoca(molie).

gato(silvester).

pessoa(eu).

come(X,Y) :- passaro(X), minhoca(Y).

come(X,Y) :- gato(X), peixe(Y).

come(X,Y) :- gato(X), passaro(Y).

come(X,Y) :- gato(X) , gostar(X, Y).

gostar(silvester, eu).

/*hello como assim obter uma merda razoavel se o crl do gato come tudo que gosta e gosta de mim esses são os predicados */