use Spielplatz

create table simple
(
id int not null constraint pk_simple primary key ,
data xml ( document [simple])
)
