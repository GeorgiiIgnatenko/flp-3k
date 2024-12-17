% Факты "родитель" (родительский предикат)
родитель(джон, боб).
родитель(мэри, боб).
родитель(мэри, энн).
родитель(боб, лиз).
родитель(боб, паул).
родитель(боб, сэм).
родитель(паул, пат).

% Факты "мужчина"
мужчина(джон).
мужчина(боб).
мужчина(паул).
мужчина(сэм).
мужчина(пат).

% Факты "женщина"
женщина(мэри).
женщина(энн).
женщина(лиз).

% Правила для определения отношений
отец(X, Y) :- родитель(X, Y), мужчина(X).
мать(X, Y) :- родитель(X, Y), женщина(X).
брат(X, Y) :- родитель(Z, X), родитель(Z, Y), мужчина(X), X \= Y.
сестра(X, Y) :- родитель(Z, X), родитель(Z, Y), женщина(X), X \= Y.
внук(X, Y) :- родитель(Z, X), родитель(Y, Z), мужчина(X).
тётя(X, Y) :- сестра(X, Z), родитель(Z, Y).
имеет_двух_детей(X) :- 
    родитель(X, A), родитель(X, B), A \= B,
    \+ (родитель(X, C), C \= A, C \= B).
продолжатель_рода(X) :- мужчина(X), родитель(X, Y), мужчина(Y).
