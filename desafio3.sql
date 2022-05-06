SELECT U.nome AS 'usuario', COUNT(HR.musica_id) AS "qtde_musicas_ouvidas", 
ROUND((SUM(M.duracao_seg)/60), 2) AS "total_minutos"
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico_reproducao AS HR
ON U.usuario_id = HR.usuario_id
INNER JOIN SpotifyClone.musicas AS M
ON HR.musica_id = M.musica_id
GROUP BY U.nome
ORDER BY U.nome ASC;