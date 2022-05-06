SELECT COUNT(HR.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducao AS HR
INNER JOIN SpotifyClone.usuarios AS U
ON HR.usuario_id = U.usuario_id
WHERE U.nome = 'Bill';