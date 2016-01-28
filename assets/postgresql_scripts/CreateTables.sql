DROP TABLE IF EXISTS "Actividades";
DROP TABLE IF EXISTS "Personas";

CREATE TABLE "Personas"
(
  id_persona integer NOT NULL,
  nombre text,
  edad integer,
  ap_paterno text,
  ap_materno text,
  CONSTRAINT "Personas_PK" PRIMARY KEY (id_persona)
);

CREATE TABLE "Actividades"
(
  id_actividad integer,
  id_persona integer,
  actividad text NOT NULL,
  CONSTRAINT "Actividad_PK" PRIMARY KEY (actividad),
  CONSTRAINT "Persona_FK" FOREIGN KEY (id_persona)
      REFERENCES "Personas" (id_persona) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

INSERT INTO "Personas"(id_persona, nombre, edad, ap_paterno, ap_materno) VALUES (1, 'Juan', 40, 'Perez', 'Prado');
INSERT INTO "Personas"(id_persona, nombre, edad, ap_paterno, ap_materno) VALUES (2, 'Miguel', 20, 'Rodriguez', 'Arce');
INSERT INTO "Personas"(id_persona, nombre, edad, ap_paterno, ap_materno) VALUES (3, 'Rodrigo', 55, 'Altamirano', 'Garza');

INSERT INTO "Actividades"(id_actividad, id_persona, actividad) VALUES (1, 2, 'Adquiere Matrimonio');
INSERT INTO "Actividades"(id_actividad, id_persona, actividad) VALUES (2, 1, 'Alta en Amazon');
INSERT INTO "Actividades"(id_actividad, id_persona, actividad) VALUES (3, 1, 'Compra de Auto');
INSERT INTO "Actividades"(id_actividad, id_persona, actividad) VALUES (4, 1, 'Compra de TV');
INSERT INTO "Actividades"(id_actividad, id_persona, actividad) VALUES (5, 2, 'Inicia Labores en Red Hat');
INSERT INTO "Actividades"(id_actividad, id_persona, actividad) VALUES (6, 3, 'Termina Estudios');
