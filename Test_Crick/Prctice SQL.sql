select * from crck1;
select * from crck2;
use world;
select play_name from crck1
union
select play_name from crck2;

select play_name,popularity from crck1 where popularity>(select avg(popularity) from crck1);

select play_name,ply_id from crck1 where crck1.ply_id in (select ply_id from crck2);

select ply_id, play_name, runs from crck1 where runs > (select avg(runs) from crck1);

select ply_id, play_name, runs from crck1 where runs > 50;

select * from crck1 where play_name like 'r%t';
select * from crck1 where play_name not like '%t';

