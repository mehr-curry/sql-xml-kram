use Spielplatz

create primary xml index ix_data on simple (data);
create xml index ix_data_value on simple (data) using xml index ix_data for value;