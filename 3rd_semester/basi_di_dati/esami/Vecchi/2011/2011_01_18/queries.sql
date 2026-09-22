-------------------------------------------------------------------------------
-- esercizio c
-- ver 1.0
select scuderia
from Cavallo join Corsa on Cavallo.id = Corsa.cavallo
group by scuderia
having count(*) = (select max(vincite) as max_vincite
                   from (select count(*) as vincite
                         from Cavallo join Corsa on Cavallo.id = Corsa.cavallo
                         group by scuderia
                         ) as table1
                   );

-- ver 2.0
create view CorsaJoinCavallo as
select Corsa.id as corsa_id, cavallo, scuderia
from Corsa join Cavallo on Cavallo.id = Corsa.cavallo;

select scuderia
from CorsaJoinCavallo
group by scuderia
having count(*) = (select max(vincite) as max_vincite
                   from (select count(*) as vincite
                         from CorsaJoinCavallo
                         group by scuderia
                         ) as table1
                   );

-- ver 3.0 fedefox
select scuderia
from Cavallo, Corsa
where Cavallo.id = Corsa.cavallo
group by scuderia
having count(*) = (select max(vincite) as max_vincite
                   from (select count(*) as vincite
                         from Cavallo join Corsa on Cavallo.id = Corsa.cavallo
                         group by scuderia
                         ) as table1
                   );
-------------------------------------------------------------------------------
esercizio d

-- mia
select fantino
from (select fantino, max(number)
      from (select fantino, count(*) as number
            from (select fantino, cavallo
                  from Corsa
                  group by fantino, cavallo
                  ) as uno
            group by fantino
            ) as due
      group by fantino;
      ) as tre;

-- fedefox
select fantino
from Corsa
group by fantino
having count(distinct cavallo) = (select max(c)
                                 from (select count(distinct cavallo) as c
                                      from Corsa
                                      group by Corsa.fantino) as uno
                                      );

