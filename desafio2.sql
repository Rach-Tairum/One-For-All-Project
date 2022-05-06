SELECT COUNT(M.musica) AS 'cancoes', COUNT(AR.nome) AS 'artistas', COUNT(AB.album) AS albuns
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.albuns AS AB
ON M.album_id = AB.album_id
INNER JOIN SpotifyClone.artistas AS AR
ON AB.artista_id = AR.artista_id;
