/* -*- Mode:Prolog; coding:iso-8859-1; indent-tabs-mode:nil; prolog-indent-width:8; prolog-paren-indent:3; tab-width:8; -*- */

pilot(lamb).
pilot(besenyei).
pilot(chambliss).
pilot(macLean).
pilot(mangold).
pilot(jones).
pilot(bonhomme).

team(lamb,breitling).
team(besenyei, red_bull).
team(chambliss,red_bull).
team(macLean, mediterranean_racing).
team(mangold,cobra).
team(jones,matador).
team(bonhomme,matador).

plane(lamb,mx2).
plane(besenyei,edge540).
plane(chambliss,edge540).
plane(macLean,edge540).
plane(mangold,edge540).
plane(jones,edge540).
plane(bonhomme,edge540).

circuit(instabul).
circuit(budapest).
circuit(porto).

won(jones,porto).
won(mangold,budapest).
won(mangold, instabul).

gates(instabul,9).
gates(budapest,6).
gates(porto,5).

wonTeam(Team,Circuito) :- won(Piloto,Circuito),team(Piloto, Team).

twoTimesWinner(X) :- won(X,Circuit1) , won(X,Circuit2), Circuit1\=Circuit2.

more8gates(X) :- gates(X, Y),Y>8.

noedge540(X) :- pilot(X),plane(X,Y), Y\=edge540.

notpilot(X,Y) :- pilot(X), plane(X, Z), Y\=Z.
