--INFORME 2.2.1 (EJECUTADO POR EL DUE�O DE LAS TABLAS )
SELECT R.DESC_REGION AS "REGI�N",
    COUNT(P.ID_POSTULANTE) AS "TOTAL POSTULANTES"
FROM POSTULANTE P
JOIN CIUDAD C
    ON (C.ID_CIUDAD = P.ID_CIUDAD)
JOIN REGION R
    ON (R.ID_REGION = C.ID_REGION)
GROUP BY R.DESC_REGION,
         R.ID_REGION
ORDER BY R.ID_REGION;

--INFORME 2.2.2 (EJECUTADO POR EL USUARIO DESARROLLADOR 1)
SELECT SUBSTR(PO.NUM_RUN, 1, 2) || ((PO.ID_POSTULANTE - 1) * 3 + 10) || SUBSTR(PO.NUM_RUN, 3) || SUBSTR(PO.PRI_NOMBRE, 1, 2)
    || '-' || PO.DV_RUN || PO.ID_POSTULANTE AS "RUN_POSTULANTE",
    PO.PRI_NOMBRE ||' '||PO.SEG_NOMBRE||' '||PO.AP_PATERNO||' '||PO.AP_MATERNO AS "NOMBRE_POSTULANTE",
    TO_CHAR(PT.FECHA_POSTULACION, 'DD/MM/YYYY') AS "FECHA POSTULACION",
    E.DESC_EST_CIVIL AS "EST. CIVIL",
    PO.DIRECCION, SUB.NOMBRE_SUBESP AS "SUBESPECILIDAD A LA QUE POSTULA",
    I.DESC_INSTITUCION AS "INSTITUCI�N ACAD�MICA",
    C.DESC_CIUDAD AS CIUDAD,
    PA.DESC_PAIS AS PAIS
FROM DUENO_TABLAS.SYN_POSTULANTE PO
JOIN DUENO_TABLAS.SYN_POSTULACION PT
    ON (PT.ID_POSTULANTE = PO.ID_POSTULANTE)
JOIN DUENO_TABLAS.SYN_ESTADO_CIVIL E
    ON (E.ID_EST_CIVIL = PO.ID_EST_CIVIL)
JOIN DUENO_TABLAS.SYN_SUBESPECIALIDAD SUB
    ON (SUB.ID_POSTULACION = PT.ID_POSTULACION)
JOIN DUENO_TABLAS.SYN_INSTITUCION I
    ON (I.ID_INSTITUCION = SUB.ID_INSTITUCION)
JOIN DUENO_TABLAS.SYN_CIUDAD C
    ON (C.ID_CIUDAD = I.ID_CIUDAD)
JOIN DUENO_TABLAS.SYN_PAIS PA
    ON (PA.ID_PAIS = C.ID_PAIS);
    
--INFORME 2.2.3 (EJECUTADO POR EL USUARIO DESARROLLADOR 2)
CREATE OR REPLACE VIEW VISTA_PJE_POSTULANTES AS
SELECT TO_CHAR(P.NUM_RUN, '99G999G999') || '-' || P.DV_RUN AS "RUN POSTULANTE",
    P.PRI_NOMBRE || ' ' || P.SEG_NOMBRE || ' ' || P.AP_PATERNO || ' ' || P.AP_MATERNO AS "NOMBRE POSTULANTE",
    TRUNC(MONTHS_BETWEEN(SYSDATE, P.FECHA_NACI) / 12) AS EDAD,
    PTJE.PUNTOS AS "PTJE. EDAD",
    EC.DESC_EST_CIVIL AS "ESTA. CIVIL",
    PTJEC.PUNTOS AS "PTJE. EST. CIVIL",
    LPAD(NVL2(P.ID_PUE_ORI, 'Si', 'No'), 13, ' ') AS "PUEBLO IND. ORIG.",
    LPAD(NVL2(P.ID_PUE_ORI, 5, 0), 16, ' ') AS "PJE. PUEBLO IND. ORIG.",
    NVL(PZ.PUNTOS, 0) AS "PTJE. ZONA EXTRENA",
    PAA.PUNTOS AS "PJE. ANTEC. ACAD",
    NVL(PJEL.PUNTOS, 0) AS "PTJE. TRAYEC./EXP.LABORAL",
    PAD.PUNTOS AS "PTJE. DOCENCIA/INVEST.",
    POE.PUNTOS AS "PTJE. OBJETIVO ESTUDIO",
    NVL(PDI.PUNTOS, 0) AS "PTE. INTERESES",
    PR.PUNTOS AS "PTJE. RETRIB.",
    NVL(PRAN.PUNTOS, 0) AS "PTJE. RANKING INST.EDUC.EXTRANJERA",
    PTJE.PUNTOS + PTJEC.PUNTOS + LPAD(NVL2(P.ID_PUE_ORI, 5, 0), 16, ' ') + NVL(PZ.PUNTOS, 0)
    + PAA.PUNTOS + NVL(PJEL.PUNTOS, 0) + PAD.PUNTOS + POE.PUNTOS + NVL(PDI.PUNTOS, 0) + PR.PUNTOS
    + NVL(PRAN.PUNTOS, 0) AS "PTJE. TOTAL"
FROM DUENO_TABLASPOSTULANTE P
JOIN DUENO_TABLASPTJE_EDAD PTJE          
    ON ((TRUNC(MONTHS_BETWEEN(SYSDATE, P.FECHA_NACI) / 12) BETWEEN PTJE.EDAD_MIN AND PTJE.EDAD_MAX))
JOIN DUENO_TABLASESTADO_CIVIL EC         
    ON (EC.ID_EST_CIVIL = P.ID_EST_CIVIL)
JOIN DUENO_TABLASPTJE_ESTADO_CIVIL PTJEC 
    ON (PTJEC.DESC_ESTADO_CIVIL = EC.DESC_EST_CIVIL)
JOIN DUENO_TABLASCIUDAD C                
    ON (C.ID_CIUDAD = P.ID_CIUDAD)
LEFT JOIN DUENO_TABLASREGION R                
    ON (R.ID_REGION = C.ID_REGION)
LEFT JOIN DUENO_TABLASPTJE_ZONA_EXTREMA PZ 
    ON (PZ.NOM_REGION = R.DESC_REGION)
JOIN DUENO_TABLASANTECEDENTES_ACADEMICOS AA   
    ON (AA.ID_POSTULANTE = P.ID_POSTULANTE)
JOIN DUENO_TABLASPTJE_ANTEC_ACADEMICOS PAA  
    ON (AA.NOTA_TITULO BETWEEN PAA.NOTA_MIN AND PAA.NOTA_MAX)
JOIN DUENO_TABLASEXP_LABORAL EL     
    ON (EL.ID_POSTULANTE = P.ID_POSTULANTE)
LEFT JOIN DUENO_TABLASPTJE_EXP_LABORAL PJEL     
    ON (TRUNC(MONTHS_BETWEEN(EL.FIN_EXP_LABORAL, EL.INICIO_EXP_LABORAL) / 12) BETWEEN PJEL.ANOS_MIN AND PJEL.ANOS_MAX)
JOIN DUENO_TABLASPOSTULACION PO 
    ON (PO.ID_POSTULANTE = P.ID_POSTULANTE)
JOIN DUENO_TABLASPTJE_ACT_DOCENCIA PAD 
    ON (PAD.NIVEL_ACT = PO.EVALUA_DOCE_INVE)
JOIN DUENO_TABLASPTJE_OBJETIVO_EST POE 
    ON (POE.EVALUACION = PO.EVALUA_OBJETIVO)
LEFT JOIN DUENO_TABLASPTJE_DECL_INTERES PDI 
    ON (PDI.EVALUACION = PO.EVALUA_INTERES)
JOIN DUENO_TABLASPTJE_RETRIBUCION PR 
    ON (PR.EVALUACION = PO.EVALUA_RETRIBUCION)
LEFT JOIN DUENO_TABLASINSTITUCION INS 
    ON (INS.ID_CIUDAD = C.ID_CIUDAD)
LEFT JOIN DUENO_TABLASPTJE_RANKING PRAN 
    ON (INS.RANKING BETWEEN PRAN.POSICION_MIN AND PRAN.POSICION_MAX)
ORDER BY P.AP_PATERNO DESC, "PTJE. TOTAL" DESC;