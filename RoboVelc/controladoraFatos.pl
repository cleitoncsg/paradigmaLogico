:-include('tabelaFatos.pl').
%pearson(21,0.8).


inserirFatoPearson(Candles,Pearson):-append('tabelaFatos.pl'),
	write('pearson('), write(Candles),write(','),write(Pearson), write(').'),nl,told.
inserirFatoPearson(Candles,Pearson).

exclui:-retract(pearson(21,0.8)), 
	tell('tabelaFatos.pl'),
	listing(pearson(X,Y)), told.
