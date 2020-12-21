
(defrule tipo-enfermedad-planta
(initial-fact)
=>
(printout t "" crlf)
(printout t "Ingrese el sintoma de la planta" crlf)
(assert (tipo-enfermedad(read))
(printout t " " crlf)
)
)

(defrule deficiencia-nitrogeno-general
(tipo-enfermedad ?tipo)
=>
(if (or (eq ?tipo La_planta_crece_muy_poco) 
	 (eq ?tipo La_planta_tiene_color_amarillo_palido) 
	   (eq ?tipo Las_hojas_tienen_un_color_pardo_rojizo))
	then
	(printout t " " crlf)
	(printout t "La planta presenta una deficiencia de hierro" crlf))
)
(defrule deficiencia-fosforo-general
(tipo-enfermedad ?tipo)
=>
(if (or (eq ?tipo La_planta_tiene_tallo_fusiforme) 
		(eq ?tipo La_raiz_de_la_planta_crece_poco) 
		(eq ?tipo La_planta_tiene_color_purpura) 
		(eq ?tipo La_planta_tiene_retraso_en_la madurez))
	then
	(printout t " " crlf)
	(printout t "La planta presenta una deficiencia de fosforo" crlf)
	)
)
(defrule deficiencia-potasio-general
(tipo-enfermedad ?tipo)
=>
(if (or (eq ?tipo La_planta_tiene_los_bordes_chamuscados) 
		(eq ?tipo La_planta_tiene_los_tallos_debilitados) 
		(eq ?tipo La_planta_tiene_semillas_marchitas)
		(eq ?tipo La_planta_tiene_frutas_marchitas)
		)
	then
	(printout t " " crlf)
	(printout t "La planta presenta una deficiencia de potasio" crlf)
	)
)

(defrule error
(tipo-enfermedad ?tipo)
=>
(if  (or (eq ?tipo La_planta_crece_muy_poco) 
	 	(eq ?tipo La_planta_tiene_color_amarillo_palido) 
	   	(eq ?tipo Las_hojas_tienen_un_color_pardo_rojizo)
	   	(eq ?tipo La_planta_tiene_tallo_fusiforme) 
		(eq ?tipo La_raiz_de_la_planta_crece_poco) 
		(eq ?tipo La_planta_tiene_color_purpura) 
		(eq ?tipo La_planta_tiene_retraso_en_la madurez)		(eq ?tipo La_planta_tiene_los_bordes_chamuscados) 
		(eq ?tipo La_planta_tiene_los_tallos_debilitados) 
		(eq ?tipo La_planta_tiene_semillas_marchitas)
		(eq ?tipo La_planta_tiene_frutas_marchitas))
 	then
	(printout t " " crlf)
	else
	(printout t " " crlf)
	(printout t "La planta no presenta ningún sintoma especificado dentro del sistema. Por favor ingrese los sintomas correctos " crlf))
)


