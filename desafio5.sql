SELECT M.musica AS cancao, COUNT(HR.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historico_reproducao AS HR
ON M.musica_id = HR.musica_id
GROUP BY M.musica
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;