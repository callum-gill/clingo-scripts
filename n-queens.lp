{ queen(1..n,1..n) }.

:- not { queen(X,Y) } == n.
:- queen(X,Y), queen(X,YY), Y!=YY.
:- queen(X,Y), queen(XX,Y), X!=XX.
:- queen(X,Y), queen(XX,YY), (X,Y) != (XX,YY), X-Y == XX-YY.
:- queen(X,Y), queen(XX,YY), (X,Y) != (XX, YY), X+Y == XX+YY.