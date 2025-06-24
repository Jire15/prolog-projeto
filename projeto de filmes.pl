% Projeto: Meu Filme Ideal
% Feito por estudantes
% ------------------------

% nós aqui criamos dados dos filmes
% filme(Titulo, [Generos], Diretor, [Atores], Nota, ClassEtaria)

filme('O Silêncio de Kitala', [drama, misterio], 'Carlos Muanza', ['Joaquim Belito'], 8, 14).
filme('Noite em Benguela', [suspense], 'Helder Cassoma', ['Anita Mulemba'], 7, 16).
filme('O Sopro do Vento', [aventura, natureza], 'Yola Catengue', ['Luis Ndala'], 8, 10).
filme('Caminho dos Esquecidos', [drama, guerra], 'Domingos Kalulu', ['Paulo Lombe'], 7, 16).
filme('Maré Vazia', [ficcao, arte], 'Rosa Quiala', ['Sara Chissende'], 7, 12).
filme('O Enigma de Zamba', [acao, mistério], 'Valdemar Quinda', ['Pedro Lando'], 8, 14).
filme('Entre Barros e Céu', [drama, rural], 'Filomena Sitoe', ['Rui Massanga'], 7, 12).
filme('Fragmentos de Luar', [romance, musical], 'Vitorino Dala', ['Nádia Zumba'], 8, 10).

% Este são os dados dos usuários
% usuario(Nome, Idade, [GenerosFavoritos], [DiretoresFavoritos], [AtoresFavoritos])

usuario(marta, 16, [drama, mistério], ['Carlos Muanza'], ['Joaquim Belito']).
usuario(pedro, 15, [aventura, natureza], ['Yola Catengue'], ['Luis Ndala']).
usuario(josefa, 17, [acao, ficcao], ['Valdemar Quinda'], ['Pedro Lando']).
usuario(raul, 20, [drama, rural], ['Filomena Sitoe'], ['Rui Massanga']).
usuario(teresa, 13, [romance, musical], ['Vitorino Dala'], ['Nádia Zumba']).

%recomendação
% recomendar_filme(NomeDoUsuario, FilmeRecomendado)

recomendar_filme(Nome, Filme) :-
    usuario(Nome, Idade, GenerosU, DiretoresU, AtoresU),
    filme(Filme, GenerosF, Diretor, AtoresF, Nota, Etaria),
    member(G, GenerosU),
    member(G, GenerosF),
    member(Diretor, DiretoresU),
    member(A, AtoresU),
    member(A, AtoresF),
    Nota >= 7,
    Idade >= Etaria.
