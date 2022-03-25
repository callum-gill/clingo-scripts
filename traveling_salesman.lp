start(a).

city(a). 
city(b). 
city(c). 
city(d).

road(a,b,10). 
road(b,c,20). 
road(c,d,25). 
road(d,a,40).
road(b,d,30).
road(d,c,25).
road(c,a,35).

{ travel(X,Y) } :- road(X,Y,_).

visited(Y) :- travel(X,Y), start(X).
visited(Y) :- travel(X,Y), visited(X).

:- city(X), not visited(X).

:- city(X), 2 { travel(X,Y) }.
:- city(X), 2 { travel(X,Y) }.

#minimize { D,X,Y : travel(X,Y), road(X,Y,D) }.

#show visited/1.