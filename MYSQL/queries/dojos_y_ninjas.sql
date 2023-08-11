-- Consulta 1: Crea 3 dojos nuevos
INSERT INTO dojos (nombre, fundacion, created_at, updated_at)
VALUES
  ('Dojo1', '2023-01-01', NOW(), NOW()),
  ('Dojo2', '2023-02-01', NOW(), NOW()),
  ('Dojo3', '2023-03-01', NOW(), NOW());

-- Consulta 2: Elimina los 3 dojos que acabas de crear
DELETE FROM dojos WHERE id IN (SELECT id FROM (SELECT id FROM dojos ORDER BY id DESC LIMIT 3) AS temp);

-- Consulta 3: Crea 3 dojos nuevos
INSERT INTO dojos (nombre, fundacion, created_at, updated_at)
VALUES
  ('Dojo4', '2023-04-01', NOW(), NOW()),
  ('Dojo5', '2023-05-01', NOW(), NOW()),
  ('Dojo6', '2023-06-01', NOW(), NOW());

-- Consulta 4: Crea 3 ninjas que pertenezcan al primer dojo
INSERT INTO ninjas (nombre, rango, dojo_id, created_at, updated_at)
VALUES
  ('Ninja1', 'Genin', 1, NOW(), NOW()),
  ('Ninja2', 'Chunin', 1, NOW(), NOW()),
  ('Ninja3', 'Jonin', 1, NOW(), NOW());

-- Consulta 5: Crea 3 ninjas que pertenezcan al segundo dojo
INSERT INTO ninjas (nombre, rango, dojo_id, created_at, updated_at)
VALUES
  ('Ninja4', 'Genin', 2, NOW(), NOW()),
  ('Ninja5', 'Chunin', 2, NOW(), NOW()),
  ('Ninja6', 'Jonin', 2, NOW(), NOW());

-- Consulta 6: Crea 3 ninjas que pertenezcan al tercer dojo
INSERT INTO ninjas (nombre, rango, dojo_id, created_at, updated_at)
VALUES
  ('Ninja7', 'Genin', 3, NOW(), NOW()),
  ('Ninja8', 'Chunin', 3, NOW(), NOW()),
  ('Ninja9', 'Jonin', 3, NOW(), NOW());

-- Consulta 7: Recupera todos los ninjas del primer dojo
SELECT * FROM ninjas WHERE dojo_id = 1;

-- Consulta 8: Recupera todos los ninjas del último dojo
SELECT * FROM ninjas WHERE dojo_id = (SELECT id FROM dojos ORDER BY id DESC LIMIT 1);

-- Consulta 9: Recupera el dojo del último ninja
SELECT * FROM dojos WHERE id = (SELECT dojo_id FROM ninjas ORDER BY id DESC LIMIT 1);
