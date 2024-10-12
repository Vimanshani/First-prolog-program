parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
offspring(Y,X):- parent(X,Y).
female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).
mother(X,Y):-parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
grandparent(X,Z):- parent(X,Y),parent(Y,Z).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\=Y.
brother(X,Y):- parent(Z,Y),parent(Z,X),male(X),X\=Y.
