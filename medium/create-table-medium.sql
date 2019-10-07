use Spielplatz

create table medium
(
id int not null constraint pk_medium primary key ,
data xml ( document [medium])
)
