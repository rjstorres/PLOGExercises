/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */

erro(1,integer_overflow).
erro(2,divisao_por_zerto).
erro(3,id_dsconhecido).

traduza(Codigo, Significado) :-
        erro(Codigo, Significado).
