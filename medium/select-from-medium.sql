use Spielplatz

select count(id) from medium

set statistics time on 

select * from medium
where data.exist(N'
declare default element namespace "http://tempuri.org/medium.xsd";
//*[@id="4999"]') = 1

set statistics time off
