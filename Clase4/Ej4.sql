DROP DATABASE if exists imbd;

create DATABASE imbd;

CREATE TABLE Actor(
    actor_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(10) NOT NULL,
    CONSTRAINT actor_id PRIMARY KEY (actor_id)
);

insert into Actor (first_name, last_name) values(
    'Ryan',
    'Reynolds'
);

insert into Actor (first_name, last_name) values(
    'Hugh',
    'Jackman'
);

insert into Actor (first_name, last_name) values(
    'Leonardo',
    'DiCaprio'
);

insert into Actor (first_name, last_name) values (
    'Christian',
    'Bale'
);

insert into Actor (first_name, last_name) values (
    'Keanu',
    'Reeves'
);

insert into Actor (first_name, last_name) values (
    'Sam',
    'Neill'
);

insert into Actor (first_name, last_name) values (
    'Tim',
    'Robbins'
);

insert into Actor (first_name, last_name) values (
    'Marlon',
    'Brando'
);


ALTER TABLE Actor
ADD COLUMN last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;