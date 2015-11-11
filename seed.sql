INSERT INTO
  kids
VALUES
  ( default, 'Joey' ),
  ( default, 'Susie' ),
  ( default, 'Peyton' ),
  ( default, 'Hagrid' );

INSERT INTO
  pets
VALUES
  ( default, (SELECT id FROM kids WHERE name = 'Joey'), 'Snoopy', 'Dog'),
  ( default, (SELECT id FROM kids WHERE name = 'Susie'), 'Hobbs', 'Cat'),
  ( default, (SELECT id FROM kids WHERE name = 'Hagrid'), 'Fluffy', 'Dragon');

INSERT INTO
  ownership
VALUES
  ( default, (SELECT id FROM kids WHERE name = 'Joey'), (SELECT id FROM pets WHERE name = 'Snoopy')),
  ( default, (SELECT id FROM kids WHERE name = 'Susie'), (SELECT id FROM pets WHERE name = 'Hobbs')),
  ( default, (SELECT id FROM kids WHERE name = 'Peyton'), (SELECT id FROM pets WHERE name = 'Fluffy')),
  ( default, (SELECT id FROM kids WHERE name = 'Hagrid'), (SELECT id FROM pets WHERE name = 'Fluffy'));