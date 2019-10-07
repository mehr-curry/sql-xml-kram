use Spielplatz

select count(id) from simple

set statistics time on 

select * from simple
where data.exist(N'
declare default element namespace "http://tempuri.org/simple.xsd";
root/layer1[@id="4999"]') = 1

set statistics time off
