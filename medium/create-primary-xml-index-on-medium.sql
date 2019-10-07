use Spielplatz

create primary xml index ix_data on medium (data);
create xml index ix_data_value on medium (data) using xml index ix_data for value;