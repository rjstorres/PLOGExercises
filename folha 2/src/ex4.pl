/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */

factorial(1,1).
factorial(N, Valor) :- N>1, subtrai1(N,Z) ,factorial(Z,Valor1) , Valor is N*Valor1.
        
subtrai1(X,Y) :- Y is X-1.

fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,F):-
        N > 1,
        N1 is N - 1, fibonacci(N1,F1),
        N2 is N - 2, fibonacci(N2,F2),
        F is F1 + F2. 