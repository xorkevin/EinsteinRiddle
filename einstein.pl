persons(0, []):-
  !.
persons(N, [(Person, Color, Drink, Smoke, Animal)|T]):-
  N1 is N-1, persons(N1, T).
person(1, [H|_], H):-
  !.
person(N, [_|T], R):-
  N1 is N-1, person(N1, T, R).

hint2([(brit, red, _, _, _)|_]).
hint2([_|T]):-
  hint2(T).

hint3([(span, _, _, _, dog)|_]).
hint3([_|T]):-
  hint3(T).

hint4([(_, green, coffee, _, _)|_]).
hint4([_|T]):-
  hint4(T).

hint5([(ukr, _, tea, _, _)|_]).
hint5([_|T]):-
  hint5(T).

hint6([(_, ivory, _, _, _), (_, green, _, _, _)|_]).
hint6([_|T]):-
  hint6(T).

hint7([(_, _, _, gold, snail)|_]).
hint7([_|T]):-
  hint7(T).

hint8([(_, yellow, _, kool, _)|_]).
hint8([_|T]):-
  hint8(T).

hint9(X):- person(3, X, (_, _, milk, _, _)).

hint10(X):- person(1, X, (norw, _, _, _, _)).

hint11([(_, _, _, chester, _), (_, _, _, _, fox)|_]).
hint11([(_, _, _, _, fox), (_, _, _, chester, _)|_]).
hint11([_|T]):-
  hint11(T).

hint12([(_, _, _, kool, _), (_, _, _, _, horse)|_]).
hint12([(_, _, _, _, horse), (_, _, _, kool, _)|_]).
hint12([_|T]):-
  hint12(T).

hint13([(_, _, oj, lucky, _)|_]).
hint13([_|T]):-
  hint13(T).

hint14([(jap, _, _, parliament, _)|_]).
hint14([_|T]):-
  hint14(T).

hint15([(norw, _, _, _, _), (_, blue, _, _, _)|_]).
hint15([(_, blue, _, _, _), (norw, _, _, _, _)|_]).
hint15([_|T]):-
  hint15(T).

question1([(_, _, water, _, _)|_]).
question1([_|T]):-
  question1(T).

question2([(_, _, _, _, zebra)|_]).
question2([_|T]):-
  question2(T).

solution(People):-
  persons(5, People),
  hint2(People),
  hint3(People),
  hint4(People),
  hint5(People),
  hint6(People),
  hint7(People),
  hint8(People),
  hint9(People),
  hint10(People),
  hint11(People),
  hint12(People),
  hint13(People),
  hint14(People),
  hint15(People),
  question1(People),
  question2(People).

% solution(People). to run
