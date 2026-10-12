INSERT INTO rooms (name)
VALUES ('Studio A');

INSERT INTO rooms (name)
VALUES ('Studio B'),
       ('Practice Room');

SELECT *
FROM rooms;

INSERT INTO instruments (name, purchase_price, acquired_on, room_id)
VALUES ('Piano', 18000, '2026-09-01', 1);

SELECT *
FROM instruments

INSERT INTO instruments (name, purchase_price, acquired_on, room_id)
VALUES ('Piano', 18000, '2026-09-01', 1);

UPDATE instruments
SET purchase_price = purchase_price * 1.1, name = 'Grand piano'
WHERE id = 1;

DELETE FROM instruments
WHERE id = 1;

SELECT *
FROM instruments
WHERE id = 1;