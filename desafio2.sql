SELECT COUNT(M.musica_id) AS 'cancoes', COUNT(DISTINCT AR.artista_id) AS 'artistas', COUNT(DISTINCT AB.album_id) AS 'albuns' 
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.albuns AS AB
ON M.album_id = AB.album_id
INNER JOIN SpotifyClone.artistas AS AR
ON AB.artista_id = AR.artista_id;