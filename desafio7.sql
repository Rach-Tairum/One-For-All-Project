SELECT AR.nome AS artista, AB.album AS album, COUNT(C.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.albuns AS AB
ON AR.artista_id = AB.artista_id
INNER JOIN SpotifyClone.conexao_user_art AS C
ON AR.artista_id = C.artista_id
GROUP BY artista, AB.album
ORDER BY seguidores DESC, artista ASC, album ASC;