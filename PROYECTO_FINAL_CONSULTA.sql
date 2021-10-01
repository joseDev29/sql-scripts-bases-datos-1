--FORMA 1
select pr.actor, pr.rol,pr.tit_pel, pr.ano_pel, COUNT(DISTINCT f.frases )
    FROM Protagonistas pr, Frases f
        WHERE pr.tit_pel = f.titulo
            AND pr.ano_pel = f.ano
                GROUP BY pr.actor, pr.rol, pr.tit_pel, pr.ano_pel;
--FORMA 2                
select pr.actor, pr.rol,pr.tit_pel, pr.ano_pel, COUNT(DISTINCT f.frases )
    FROM Protagonistas pr INNER JOIN Frases f
        ON pr.tit_pel = f.titulo
            AND pr.ano_pel = f.ano
                GROUP BY pr.actor, pr.rol, pr.tit_pel, pr.ano_pel;