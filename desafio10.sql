SELECT M.musica AS nome, COUNT(HR.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historico_reproducao AS HR
ON M.musica_id = HR.musica_id
INNER JOIN SpotifyClone.usuarios AS U
ON HR.usuario_id = U.usuario_id
WHERE U.plano_id = 1 OR U.plano_id = 4
GROUP BY M.musica;