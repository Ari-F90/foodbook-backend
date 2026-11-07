-- FoodBook · datos de ejemplo
-- Contraseña de todos los usuarios de prueba: Test1234!   (hash BCrypt)
-- Las referencias van por id. Los ids se asignan solos en el orden en que se insertan:
--   categoria:   1 Desayuno, 2 Almuerzo, 3 Comida, 4 Cena, 5 Otros
--   tipo_cocina: 1 Griega, 2 Española, 3 Italiana, 4 Mexicana, 5 Asiática, 6 Libanesa, 7 Otras
--   usuario:     1 admin, 2 iker.delgado, 3 saul.blanco, 4 ari.frias, 5 ana.fogones,
--                6 marcos.cocina, 7 laura.ollas, 8 sofia.tapas
--   plato:       1 Musaka, 2 Ensalada de pasta, 3 Tortilla de patatas, 4 Pizza margarita,
--                5 Lasaña de verduras, 6 Wrap de verduras, 7 Hummus casero, 8 Crema de calabaza
-- Si hay que repetirlo: TRUNCATE favorito, plato, tipo_cocina, categoria, usuario RESTART IDENTITY CASCADE;

INSERT INTO categoria (nombre) VALUES ('Desayuno'), ('Almuerzo'), ('Comida'), ('Cena'), ('Otros');

INSERT INTO tipo_cocina (nombre) VALUES
 ('Griega'), ('Española'), ('Italiana'), ('Mexicana'), ('Asiática'), ('Libanesa'), ('Otras');

INSERT INTO usuario (username, email, password, rol) VALUES
 ('admin',          'admin@correo.com',  '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'ADMIN'),
 ('iker.delgado',   'iker@correo.com',   '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'USER'),
 ('saul.blanco',    'saul@correo.com',   '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'USER'),
 ('ari.frias',      'ari@correo.com',    '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'USER'),
 ('ana.fogones',    'ana@correo.com',    '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'USER'),
 ('marcos.cocina',  'marcos@correo.com', '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'USER'),
 ('laura.ollas',    'laura@correo.com',  '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'USER'),
 ('sofia.tapas',    'sofia@correo.com',  '$2a$10$uisUQhAxVKyTX5QWGxcUDONOKzS1/dZUGi8S3sCg9OR9561m7VBxG', 'USER');

INSERT INTO plato (id_usuario, id_categoria, id_tipo_cocina, nombre, descripcion, imagen_url, tiempo_preparacion, ingredientes, elaboracion, estado) VALUES
 (5, 3, 1, 'Musaka', 'Clásico plato griego de berenjenas, carne y bechamel gratinada.', NULL, 60,
  E'3 berenjenas\n500 g de carne picada\n2 patatas\n1 cebolla\n1 pimiento\n2 dientes de ajo\n200 ml de vino tinto\n400 g de tomate triturado\nSal y pimienta\nCanela',
  E'Laminar las berenjenas y marcarlas en la plancha.\nPicar pimiento, ajo y cebolla.\nDorar la carne picada.\nMojar con el vino, reducir y añadir el tomate.\nMontar en una fuente capas de patata, berenjena y carne.\nCubrir con bechamel y queso rallado y hornear 30 min a 180 °C.', 'PUBLICADO'),
 (6, 2, 3, 'Ensalada de pasta', 'Fresca y rápida, ideal para llevar.', NULL, 20,
  E'250 g de pasta\n1 tomate\n1 lata de atún\n100 g de maíz\nAceite de oliva\nSal',
  E'Cocer la pasta y enfriarla con agua fría.\nPicar el tomate.\nMezclar todo y aliñar con aceite y sal.', 'PUBLICADO'),
 (7, 4, 2, 'Tortilla de patatas', 'La de toda la vida, jugosa por dentro.', NULL, 35,
  E'5 huevos\n4 patatas\n1 cebolla\nAceite de oliva\nSal',
  E'Pelar y cortar las patatas y la cebolla.\nPocharlas en aceite a fuego suave.\nMezclar con los huevos batidos.\nCuajar la tortilla por los dos lados.', 'PUBLICADO'),
 (6, 4, 3, 'Pizza margarita', 'Masa fina con tomate, mozzarella y albahaca.', NULL, 30,
  E'1 base de masa de pizza\n200 g de tomate triturado\n150 g de mozzarella\nAlbahaca fresca\nAceite de oliva',
  E'Extender la masa y cubrir con el tomate.\nAñadir la mozzarella en trozos.\nHornear 12 min a 220 °C.\nTerminar con albahaca y un chorro de aceite.', 'OCULTO'),
 (5, 3, 3, 'Lasaña de verduras', 'Capas de pasta, verduras y bechamel.', NULL, 55,
  E'8 placas de lasaña\n1 calabacín\n1 berenjena\n1 zanahoria\n400 g de tomate triturado\nBechamel\nQueso rallado',
  E'Saltear las verduras picadas y añadir el tomate.\nMontar capas de pasta, relleno y bechamel.\nCubrir con queso y hornear 35 min a 180 °C.', 'PUBLICADO'),
 (7, 5, 7, 'Wrap de verduras', 'Un bocado rápido y ligero.', NULL, 15,
  E'2 tortillas de trigo\n1 zanahoria\nLechuga\n1 aguacate\nSalsa de yogur',
  E'Rallar la zanahoria y cortar la lechuga y el aguacate.\nRepartir en las tortillas con la salsa.\nEnrollar y cortar por la mitad.', 'PUBLICADO'),
 (8, 5, 6, 'Hummus casero', 'Crema de garbanzos con tahini y limón.', NULL, 10,
  E'400 g de garbanzos cocidos\n2 cucharadas de tahini\n1 limón\n1 diente de ajo\nAceite de oliva\nSal',
  E'Triturar los garbanzos con el tahini, el limón y el ajo.\nAñadir aceite y sal hasta tener una crema fina.', 'PUBLICADO'),
 (8, 4, 2, 'Crema de calabaza', 'Suave y reconfortante.', NULL, 40,
  E'600 g de calabaza\n1 puerro\n1 patata\n500 ml de caldo\nAceite de oliva\nSal',
  E'Pochar el puerro y añadir la calabaza y la patata en trozos.\nCubrir con el caldo y cocer 25 min.\nTriturar hasta que quede fina.', 'PUBLICADO');

-- Favoritos de ejemplo (id_usuario, id_plato)
INSERT INTO favorito (id_usuario, id_plato) VALUES
 (5, 3),  -- ana.fogones      · Tortilla de patatas
 (5, 7),  -- ana.fogones      · Hummus casero
 (6, 1),  -- marcos.cocina    · Musaka
 (7, 1),  -- laura.ollas      · Musaka
 (7, 5);  -- laura.ollas      · Lasaña de verduras