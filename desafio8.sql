SELECT AR.nome AS artista, AB.album AS album
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.albuns AS AB
ON AR.artista_id = AB.artista_id
GROUP BY artista, AB.album
HAVING AR.nome = 'Walter Phoenix'
ORDER BY album ASC;