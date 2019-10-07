use Spielplatz

delete from medium

declare @i int = 0;
declare @xmlTemplate nvarchar(max) = 
N'<root xmlns="http://tempuri.org/medium.xsd">
  <layer1 id="{id}" name="abc1" someFloat="1.0">
    <layer2 id="1.1" name="def1" someFloat="1.1" someEnum="2" />
    <layer2 id="1.2" name="def2" someFloat="1.2"/>
  </layer1>
  <layer1 id="2" name="abc2" someFloat="2.0" />
</root>';

--set statistics time on 

while(@i < 100000)
Begin
	declare @xml nvarchar(max) = REPLACE(@xmlTemplate, N'{id}', @i);
	execute sp_executesql N'INSERT INTO medium (id, data) VALUES (@id, @xml)', N'@id int, @xml nvarchar(max)', @i, @xml;
	set @i += 1
end

--set statistics time off
