-- SCRIPT POBLADO DE TABLAS

--POBLADO TABLA PUEBLO ORIGINARIO
INSERT INTO PUEBLO_ORIGINARIO VALUES (SEQ_PUEBLO_ORIGINARIO.NEXTVAL, 'DIAGUITA');
INSERT INTO PUEBLO_ORIGINARIO VALUES (SEQ_PUEBLO_ORIGINARIO.NEXTVAL, 'MAPUCHE');
INSERT INTO PUEBLO_ORIGINARIO VALUES (SEQ_PUEBLO_ORIGINARIO.NEXTVAL, 'AYMARA');
INSERT INTO PUEBLO_ORIGINARIO VALUES (SEQ_PUEBLO_ORIGINARIO.NEXTVAL, 'QUECHUA');
INSERT INTO PUEBLO_ORIGINARIO VALUES (SEQ_PUEBLO_ORIGINARIO.NEXTVAL, 'ATACAME?O');
INSERT INTO PUEBLO_ORIGINARIO VALUES (SEQ_PUEBLO_ORIGINARIO.NEXTVAL, 'RAPANUI');
/

-- POBLADO TABLA ESTADO_CIVIL
INSERT INTO ESTADO_CIVIL VALUES (SEQ_ESTADO_CIVIL.NEXTVAL,'Casado');
INSERT INTO ESTADO_CIVIL VALUES (SEQ_ESTADO_CIVIL.NEXTVAL,'Conviviente civil');
INSERT INTO ESTADO_CIVIL VALUES (SEQ_ESTADO_CIVIL.NEXTVAL,'Soltero');
INSERT INTO ESTADO_CIVIL VALUES (SEQ_ESTADO_CIVIL.NEXTVAL,'Divorciado');
INSERT INTO ESTADO_CIVIL VALUES (SEQ_ESTADO_CIVIL.NEXTVAL,'Viudo');
/
 
-- POBLADO TABLA NACIONALIDAD
INSERT INTO NACIONALIDAD VALUES (SEQ_NACIONALIDAD.NEXTVAL, 'Chilena');
INSERT INTO NACIONALIDAD VALUES (SEQ_NACIONALIDAD.NEXTVAL, 'Argentina');
INSERT INTO NACIONALIDAD VALUES (SEQ_NACIONALIDAD.NEXTVAL, 'Canadiense');
INSERT INTO NACIONALIDAD VALUES (SEQ_NACIONALIDAD.NEXTVAL, 'Australiana');
INSERT INTO NACIONALIDAD VALUES (SEQ_NACIONALIDAD.NEXTVAL, 'Alemana');
/

-- POBLADO TABLA REGION
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Tarapac?');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Antofagasta');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Atacama');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Coquimbo');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Valpara?so');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de OHiggins');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Maule');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Biob?o');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de La Araucan?a');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Los Lagos');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Ays?n del General Carlos Ib??ez del Campo');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Magallanes y de la Ant?rtica Chilena');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'Metropolitana');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Los R?os');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de Arica y Parinacota');
INSERT INTO REGION VALUES (SEQ_REGION.NEXTVAL, 'de ?uble');
/

-- POBLADO TABLA PAIS
INSERT INTO PAIS VALUES (SEQ_PAIS.NEXTVAL,'Chile');
INSERT INTO PAIS VALUES (SEQ_PAIS.NEXTVAL,'Argentina');
INSERT INTO PAIS VALUES (SEQ_PAIS.NEXTVAL,'Canad?');
INSERT INTO PAIS VALUES (SEQ_PAIS.NEXTVAL,'Australia');
INSERT INTO PAIS VALUES (SEQ_PAIS.NEXTVAL,'Alemania');
/

--POBLADO DOC_EXTRANJERO
INSERT INTO DOC_EXTRANJERO VALUES (1,'74J98L41J',78293891);
INSERT INTO DOC_EXTRANJERO VALUES (2,'26P57K41H',78236784);
INSERT INTO DOC_EXTRANJERO VALUES (3,'29M47Z36I',17298463);
INSERT INTO DOC_EXTRANJERO VALUES (4,'10F48Y19N',12032358);
INSERT INTO DOC_EXTRANJERO VALUES (5,'49U83G95V',98237423);
/

--POBLADO TABLA CIUDAD
INSERT INTO CIUDAD VALUES (1,'Santiago',1,13);
INSERT INTO CIUDAD VALUES (2,'Concepci?n',1,8);
INSERT INTO CIUDAD VALUES (3,'Vi?a del Mar',1,5);
INSERT INTO CIUDAD VALUES (4,'Valpara?so',1,5);
INSERT INTO CIUDAD VALUES (5,'Buenos Aires',2,NULL);
INSERT INTO CIUDAD VALUES (6,'Montreal',3,NULL);
INSERT INTO CIUDAD VALUES (7,'Sidney',4,NULL);
INSERT INTO CIUDAD VALUES (8,'Berlin',5,NULL);
INSERT INTO CIUDAD VALUES (9,'Toronto',3,NULL);
INSERT INTO CIUDAD VALUES (10,'Punta Arenas',1,12);
/

-- POBLADO TABLA PTJE_ESTADO_CIVIL
INSERT INTO PTJE_ESTADO_CIVIL VALUES ('Casado', 5);
INSERT INTO PTJE_ESTADO_CIVIL VALUES ('Conviviente civil', 4);
INSERT INTO PTJE_ESTADO_CIVIL VALUES ('Soltero', 3);
INSERT INTO PTJE_ESTADO_CIVIL VALUES ('Divorciado', 2);
INSERT INTO PTJE_ESTADO_CIVIL VALUES ('Viudo', 1);
/

-- POBLADO TABLA PTJE_OBJETIVO_EST
INSERT INTO PTJE_OBJETIVO_EST VALUES ('Excelente', 5);
INSERT INTO PTJE_OBJETIVO_EST VALUES ('Muy bueno', 4);
INSERT INTO PTJE_OBJETIVO_EST VALUES ('Bueno', 3);
INSERT INTO PTJE_OBJETIVO_EST VALUES ('Regular', 1);
/

-- POBLADO TABLA PTJE_RETRIBUCION
INSERT INTO PTJE_RETRIBUCION VALUES ('Excelente', 5);
INSERT INTO PTJE_RETRIBUCION VALUES ('Muy bueno', 4);
INSERT INTO PTJE_RETRIBUCION VALUES ('Bueno', 3);
INSERT INTO PTJE_RETRIBUCION VALUES ('Regular', 1);
/

-- POBLADO TABLA PTJE_DECL_INTERES
INSERT INTO PTJE_DECL_INTERES VALUES ('Excelente', 5);
INSERT INTO PTJE_DECL_INTERES VALUES ('Muy bueno', 4);
INSERT INTO PTJE_DECL_INTERES VALUES ('Bueno', 3);
INSERT INTO PTJE_DECL_INTERES VALUES ('Regular', 1);
/

-- POBLADO TABLA PTJE_EDAD
INSERT INTO PTJE_EDAD VALUES (18, 29, 5);
INSERT INTO PTJE_EDAD VALUES (30, 39, 3);
INSERT INTO PTJE_EDAD VALUES (40, 120, 1);
/

-- POBLADO TABLA PTJE_ANTEC_ACADEMICOS
INSERT INTO PTJE_ANTEC_ACADEMICOS VALUES (6.6, 7.0, 5);
INSERT INTO PTJE_ANTEC_ACADEMICOS VALUES (6.0, 6.5, 4);
INSERT INTO PTJE_ANTEC_ACADEMICOS VALUES (5.5, 5.9, 3);
INSERT INTO PTJE_ANTEC_ACADEMICOS VALUES (5.2, 5.4, 2);
INSERT INTO PTJE_ANTEC_ACADEMICOS VALUES (5.0, 5.1, 1);
/

-- POBLADO TABLA PTJE_ZONA_EXTREMA
INSERT INTO PTJE_ZONA_EXTREMA VALUES ('de Ays?n del General Carlos Ib??ez del Campo', 5);
INSERT INTO PTJE_ZONA_EXTREMA VALUES ('de Magallanes y de la Ant?rtica Chilena', 4);
INSERT INTO PTJE_ZONA_EXTREMA VALUES ('de Arica y Parinacotaa', 5);
INSERT INTO PTJE_ZONA_EXTREMA VALUES ('de Tarapac?', 4);
/

-- POBLADO TABLA PTJE_EXP_LABORAL
INSERT INTO PTJE_EXP_LABORAL VALUES (6, 80, 5);
INSERT INTO PTJE_EXP_LABORAL VALUES (5, 5.9, 4);
INSERT INTO PTJE_EXP_LABORAL VALUES (4, 4.9, 3);
INSERT INTO PTJE_EXP_LABORAL VALUES (3, 3.9, 2);
INSERT INTO PTJE_EXP_LABORAL VALUES (2, 2.9, 1);
/

-- POBLADO TABLA PTJE_ACT_DOCENCIA
INSERT INTO PTJE_ACT_DOCENCIA VALUES ('Alta', 5);
INSERT INTO PTJE_ACT_DOCENCIA VALUES ('Media', 3);
INSERT INTO PTJE_ACT_DOCENCIA VALUES ('Baja', 1);
/

--POBLADO TABLA PTJE_RANKING
INSERT INTO PTJE_RANKING VALUES (1, 10, 5);
INSERT INTO PTJE_RANKING VALUES (11, 20, 4);
INSERT INTO PTJE_RANKING VALUES (21, 30, 3);
INSERT INTO PTJE_RANKING VALUES (31, 50, 2);
INSERT INTO PTJE_RANKING VALUES (51, 100, 1);
/

--POBLADO TABLA CRITERIO_EVALUACION
INSERT INTO CRITERIO_EVALUACION VALUES (1,'Edad', 5);
INSERT INTO CRITERIO_EVALUACION VALUES (2,'Estado civil', 5);
INSERT INTO CRITERIO_EVALUACION VALUES (3,'Pueblo originario', 10);
INSERT INTO CRITERIO_EVALUACION VALUES (4,'Zona extrema', 10);
INSERT INTO CRITERIO_EVALUACION VALUES (5,'Notas de pregrado', 10);
INSERT INTO CRITERIO_EVALUACION VALUES (6,'Trayectoria laboral', 10);
INSERT INTO CRITERIO_EVALUACION VALUES (7,'Actividades de docencia, investigaci?n, postgrados', 10);
INSERT INTO CRITERIO_EVALUACION VALUES (8,'Objetivo de estudio', 10);
INSERT INTO CRITERIO_EVALUACION VALUES (9,'Declaraci?n de intereses', 5);
INSERT INTO CRITERIO_EVALUACION VALUES (10,'Retribuci?n', 5);
INSERT INTO CRITERIO_EVALUACION VALUES (11,'Ranking de instituci?n de destino', 20);
/

--POBLADO TABLA INSTITUCION
INSERT INTO INSTITUCION VALUES (1,'Universidad de Valpara?so', 1, null, 4);
INSERT INTO INSTITUCION VALUES (2,'Universidad Vi?a del Mar', 1, null, 3);
INSERT INTO INSTITUCION VALUES (3,'Universidad de Concepci?n', 1, null, 2);
INSERT INTO INSTITUCION VALUES (4,'Universidad de Chile', 1, null, 1);
INSERT INTO INSTITUCION VALUES (5,'University of Toronto', 6, null, 9);
INSERT INTO INSTITUCION VALUES (6,'Free University of Berlin', 23, null, 8);
INSERT INTO INSTITUCION VALUES (7,'Humboldt University of Berlin', 26, null, 8);
INSERT INTO INSTITUCION VALUES (8,'University of Sydney', 37, null, 7);
INSERT INTO INSTITUCION VALUES (9,'University of Buenos Aires', 99, null, 5);
/

--POBLADO TABLA POSTULANTE
INSERT INTO POSTULANTE VALUES (1,'Perez','Lamarca','Ramon','Romeo',11432342,'3','13/04/1986','M','Calle 10 # 5-51', 0, 'N', 1, null, 1, 1, null);
INSERT INTO POSTULANTE VALUES (2,'Ulloa','Lanata','Victoria','Andrea',16432342,'6','12/02/1986','F','Calle 111', 2, 'S', 2, 1, 2, 1, null);
INSERT INTO POSTULANTE VALUES (3,'Atreides','Santacruz','Adela','Fernanda',21432342,'4','13/04/1990','M','Calle Salta #21', 2, 'N', 2, null, 5, 2, 1);
INSERT INTO POSTULANTE VALUES (4,'Salamanca','Quill?n','Benedicto','Bartolomeo',10432342,'8','03/12/1970','M','Avenida Pedro Montt #5001', 9, 'S', 4, 3, 2, 1, null);
INSERT INTO POSTULANTE VALUES (5,'Pe?aloza','Tolosa','Daniela','Carolina',14533342,'1','13/04/1991','F','Calle Ventosa #12', 0, 'N', 2, null, 10, 1, null);
INSERT INTO POSTULANTE VALUES (6,'Idaho','Harkonen','Alia','Catalina',23432342,'5','13/10/1991','F','Calle Nueve de Julio #100', 1, 'S', 4, 4, 10, 1, null);
/

--POBLADO TABLA EXP_LABORAL
INSERT INTO EXP_LABORAL VALUES (1, null, '30/04/2010', '01/04/2020', 1);
INSERT INTO EXP_LABORAL VALUES (2, null, '29/04/2001', '01/05/2020', 2);
INSERT INTO EXP_LABORAL VALUES (3, null, '11/05/2009', '11/09/2019', 3);
INSERT INTO EXP_LABORAL VALUES (4, null, '21/06/2009', '08/12/2020', 4);
INSERT INTO EXP_LABORAL VALUES (5, null, '11/01/2008', '09/11/2019', 5);
INSERT INTO EXP_LABORAL VALUES (6, null, '01/03/2017', '30/09/2020', 6);
/

--POBLADO TABLA POSTULACION
INSERT INTO POSTULACION VALUES (1, '30/04/2021', 'Excelente', 'Bueno', 'Media','Excelente', 1, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB());
INSERT INTO POSTULACION VALUES (2, '11/04/2021', 'Bueno', 'Excelente', 'Alta','Bueno', 2, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB());
INSERT INTO POSTULACION VALUES (3, '22/03/2021', 'Regular', 'Bueno', 'Baja','Alta', 3, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB());
INSERT INTO POSTULACION VALUES (4, '14/02/2021', 'Excelente', 'Regular', 'Media','Regular', 4, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB());
INSERT INTO POSTULACION VALUES (5, '01/08/2021', 'Bueno', 'Bueno', 'Media','Media', 5, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB());
INSERT INTO POSTULACION VALUES (6, '05/01/2021', 'Regular', 'Excelente', 'Alta','Bueno', 6, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB());
/

--POBLADO TABLA ANTECEDENTES_ACADEMICOS
INSERT INTO ANTECEDENTES_ACADEMICOS VALUES (1, null, 'Medicina general', '30/04/2000', 6.3, 1, 2);
INSERT INTO ANTECEDENTES_ACADEMICOS VALUES (2, null, 'Medicina obstetricia', '01/04/2002', 6.0, 2, 2);
INSERT INTO ANTECEDENTES_ACADEMICOS VALUES (3, null, 'Medicina general', '22/01/2001', 6.6, 3, 9);
INSERT INTO ANTECEDENTES_ACADEMICOS VALUES (4, null, 'Pediatr?a', '22/01/1997', 6.1, 4, 3);
INSERT INTO ANTECEDENTES_ACADEMICOS VALUES (5, null, 'Medicina general', '11/02/2008', 6.9, 5, 3);
INSERT INTO ANTECEDENTES_ACADEMICOS VALUES (6, null, 'Oftalmolog?a', '31/12/2002', 6.0, 6, 4);
/

--POBLADO TABLA SUBESPECIALIDAD
INSERT INTO SUBESPECIALIDAD VALUES (1, 'Cardiolog?a', null, null, 1, 5);
INSERT INTO SUBESPECIALIDAD VALUES (2, 'Neurolog?a', null, null, 2, 6);
INSERT INTO SUBESPECIALIDAD VALUES (3, 'Reumatolog?a', null, null, 3, 7);
INSERT INTO SUBESPECIALIDAD VALUES (4, 'Hematolog?a', null, null, 4, 8);
INSERT INTO SUBESPECIALIDAD VALUES (5, 'Endocrinolog?a', null, null, 5, 5);
INSERT INTO SUBESPECIALIDAD VALUES (6, 'Cardiolog?a Pedi?trica', null, null, 6, 6);
/