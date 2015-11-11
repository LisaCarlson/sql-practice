DROP TABLE IF EXISTS kids cascade;
DROP TABLE IF EXISTS pets cascade;
DROP TABLE IF EXISTS ownership cascade;

CREATE TABLE kids (
  id serial primary key,
  name varchar(20)  
);

CREATE TABLE pets (
  id serial primary key,
  kid_id int references kids(id) on delete cascade,
  name varchar(20),
  type varchar(20)
);

CREATE TABLE ownership (
  id serial primary key,
  kid_id int references kids(id) on delete cascade,
  pet_id int references pets(id) on delete cascade
);