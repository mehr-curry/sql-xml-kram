use spielplatz

delete from simple

declare @i int = 0;
declare @xmlTemplate nvarchar(max) = N'<root xmlns="http://tempuri.org/simple.xsd">
  <layer1 id="{id}" />
</root>';

--set statistics time on 

while(@i < 100000)
Begin
	declare @xml nvarchar(max) = REPLACE(@xmlTemplate, N'{id}', @i);
	execute sp_executesql N'INSERT INTO simple (id, data) VALUES (@id, @xml)', N'@id int, @xml nvarchar(max)', @i, @xml;
	set @i += 1
end

--set statistics time off
