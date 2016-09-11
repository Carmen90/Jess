;Grupo 10. Carmen Acosta Morales y Sheila Plaza Estévez

(defglobal ?*pantGrande* = 4.0)
(defglobal ?*pantMediana* = 3.0)
(defglobal ?*pantPeque* = 2.0)
(defglobal ?*cont* = 0)
(defglobal ?*cantidadMostrar* = 5)

;Características de un terminal
(deftemplate terminales
    (slot marca (type STRING))
    (slot modelo (type STRING))
    (slot pantalla (type FLOAT) (default 3))
    (slot memoria (allowed-values 0.15 4 8 16 32 )(default 16))
    (slot camara (type FLOAT)(default 3.15))
    (slot precio (type FLOAT))
    (slot gama (allowed-values basica media alta)(default media))
    (slot microSD (allowed-values true false)(default true))
    (slot 3G (allowed-values true false)(default false))
    (slot Wifi (allowed-values true false)(default false)))

;Características de un usuario
(deftemplate usuario
    (slot nombre (type STRING))
    (slot edad (type NUMBER))
    (slot ocupacion	(allowed-values estudiante trabajador paro) (default estudiante))
    (slot presupuesto(type NUMBER)(default 0))
    (slot jugar (allowed-values true false)(default false))
    (slot leer (allowed-values true false)(default false))
    (slot videos (allowed-values true false)(default false))
    (slot grabar (allowed-values true false)(default false))
    (slot redes (allowed-values true false)(default false))
    (slot correo (allowed-values true false)(default false))
    (slot comunicacion (allowed-values true false)(default false))
    (slot fotos (allowed-values true false)(default false))
   ; (slot preferenciaMarca (type STRING))
    )

;Lista de terminales posibles
(deffacts terminalesPosibles
    (terminales (marca "LG")(modelo "Optimus L1 II")(pantalla 3)(memoria 4)(camara 2)(precio 79)(gama basica)(microSD false)(3G true)(Wifi true))
    (terminales (marca "Hisense")(modelo "912A")(pantalla 4)(memoria 4)(camara 2)(precio 85)(gama basica)(microSD true)(3G true)(Wifi true))
    (terminales (marca "LG")(modelo "Optimus L3 II")(pantalla 3.2)(memoria 4)(camara 3)(precio 89)(gama basica)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samgung")(modelo "Galaxy Mini 2")(pantalla 3.27)(memoria 4)(camara 3.15)(gama basica)(precio 99)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Sony")(modelo "Xperia Tipo")(pantalla 3.2)(memoria 4)(camara 3.2)(gama media)(precio 105)(microSD true)(3G true)(Wifi true))
    (terminales (marca "LG")(modelo "Optimus L4 II")(pantalla 3.8)(memoria 4)(camara 3.2)(precio 109)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Kazam")(modelo "Trooper X Dual Sim")(pantalla 4.3)(memoria 4)(camara 5)(precio 129)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Nokia")(modelo "Lumia 520")(pantalla 4)(memoria 8)(camara 5)(precio 159)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "LG")(modelo "Optimus L5 II")(pantalla 4)(memoria 4)(camara 5)(precio 159)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samsung")(modelo "Galaxy Trend")(pantalla 4)(memoria 4)(camara 5)(precio 159)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samsung")(modelo "Galaxy Ace 2")(pantalla 4)(memoria 4)(camara 5)(precio 139)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Optimus")(modelo "L5")(pantalla 4.5)(memoria 4)(camara 5)(precio 139)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Motorla")(modelo "Mota G")(pantalla 4.5)(memoria 16)(camara 5)(precio 197.01)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Motorla")(modelo "Mota G")(pantalla 4.5)(memoria 8)(camara 5)(precio 175.00)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Huawei")(modelo "Ascend Y300")(pantalla 4)(memoria 8)(camara 5)(precio 98.90)(gama basica)(microSD true)(3G true)(Wifi true))
    (terminales (marca "BQ")(modelo "Aquaris 5")(pantalla 5)(memoria 16)(camara 8)(precio 187.45)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Sony")(modelo "Xperia L")(pantalla 4.3)(memoria 8)(camara 8)(precio 187.11)(gama media)(microSD true))
    (terminales (marca "Samsung")(modelo"Galaxy Y S5360")(pantalla 3)(memoria 4)(camara 2)(precio 69.20)(gama basica)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samsung")(modelo "Galaxy S4 mini")(pantalla 4.3)(memoria 8)(camara 8)(precio 307.00)(gama alta)(microSD true)(3G true)(Wifi true))
    (terminales (marca "BQ")(modelo "Aquaris 4.5")(pantalla 4.5)(memoria 4)(camara 8)(precio 147.45)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samsung")(modelo "Galaxy S3 mini")(pantalla 4)(memoria 8)(camara 5)(precio 185.00)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Google")(modelo "Nexus 5")(pantalla 4.95)(memoria 16)(camara 8)(precio 379.00)(gama alta)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samsung")(modelo"Galaxy S4 (I9505)")(pantalla 4.99)(memoria 16)(camara 13)(precio 439.00)(gama alta)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Motorola")(modelo"Moto G ")(pantalla 4.5)(memoria 8)(camara 5)(precio 177.21)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Sony")(modelo"Xperia SP C5303")(pantalla 4.6)(memoria 8)(camara 8)(precio 259.00)(gama alta)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samsung")(modelo"Galaxy S3 (i9300)")(pantalla 4.8)(memoria 16)(camara 8)(precio 303.00)(gama alta)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Samsung")(modelo "Galaxy Trend S7560")(pantalla 4)(memoria 4)(camara 5)(precio 137.61)(gama media)(microSD true)(3G true)(Wifi true))
    (terminales (marca "Sony" )( modelo "Xperia T")(pantalla 4.55)(memoria 16)(camara 13)(precio 245.00)(gama alta)(microSD true)(3G true)(Wifi true))
    )

(defmodule necesidades)

(deftemplate necesidadesUsuario
    (slot nombre (type STRING))
   ; (slot marca (type STRING))
    (slot pantalla (allowed-values grande mediana pequeña)(default pequeña))
    (slot camara (type FLOAT) (default 2))
    (slot precio (type FLOAT))
    (slot microSD (allowed-values true false)(default false))
    (slot gama (allowed-values basica media alta)(default basica))
    (slot 3G (allowed-values true false)(default false))
    (slot Wifi (allowed-values true false)(default false))
    )

;////// NECESIDADES DIRECTAS
;Necesidades de precio, marca 
(defrule directas
    (MAIN::usuario (nombre ?nom)(presupuesto ?p))
    =>
    (assert (necesidadesUsuario (nombre ?nom)(precio ?p)))
    )

;///NECESIDADES INDIRECTAS (intereses del usuario)
;Necesidades de juegos y videos
(defrule necJuegosVideos
    (MAIN::usuario (nombre ?nom)(jugar ?j)(videos ?v))
    ?ns <-(necesidades::necesidadesUsuario (camara ?ca)(gama ?ga)(microSD ?ms)(nombre ?nom)(pantalla ?pa)(precio ?p))
    (test (or(eq ?j true)(eq ?v true)))
    =>
    (modify ?ns (microSD true)(pantalla grande))
    )


;Necesidades de lectura
(defrule necLectura
    (MAIN::usuario (nombre ?nom)(leer true))
    ?nu <-(necesidades::necesidadesUsuario (camara ?c)(gama ?g)(microSD ?msd)(nombre ?nom)(pantalla ?p)(precio ?pr))
    =>
    (modify ?nu (pantalla grande))
    )

;Necesidades de fotos y grabar
(defrule necFotosGrabar
    (MAIN::usuario (nombre ?nom)(fotos ?fo)(grabar ?gr))
    ?nu <-(necesidades::necesidadesUsuario(camara ?c)(gama ?g)(microSD ?msd)(nombre ?nom)(pantalla ?p)(precio ?pr))
    (test (or(eq ?fo true)(eq ?gr true)))
    (test ( >= ?c 5))
    =>
    (modify ?nu (camara ?c)(microSD true))
    )

;Necesidades redes y correo
(defrule necRedesCorreo
    (MAIN::usuario (nombre ?nom)(redes ?re)(correo ?co))
    ?nu <-(necesidades::necesidadesUsuario (camara ?c)(gama ?g)(microSD ?msd)(nombre ?nom)(pantalla ?p)(precio ?pr))
    (test (or(eq ?re true)(eq ?co true)))
    =>
    (modify ?nu ( 3G true)(Wifi true))
    )

(defmodule sugerencias)
(deftemplate telefonoUsuario 
    (slot nombre ( type STRING))
    (slot marca (type STRING))
    (slot modelo (type STRING))
    (slot precio (type NUMBER))
    )
(deffunction tipoPantalla (?pantalla)
    if (eq ?pantalla grande)then
    	(return ?*pantGrande*)
    else if ( eq ?pantalla mediana)then
    	(return ?*pantMediana*)
    else if (eq ?pantalla pequeña)then
    	(return ?*pantPeque*)
    )

(deffunction tipoGama (?gama)
    if (eq ?gama alta)then
    	(return 3)
    else if ( eq ?gama media)then
    	(return 2)
    else if (eq ?gama basica)then
    	(return 1)
    )

(defrule sugerenciaTelefonos
    (necesidades::necesidadesUsuario (3G ?3g)(Wifi ?w)(camara ?c)(gama ?g)(microSD ?msd)(nombre ?n)(pantalla ?p)(precio ?pr))
    (MAIN::terminales (3G ?3gm)(modelo ?mod)(Wifi ?wm)(camara ?cm)(gama ?gm)(marca ?m)(microSD ?msdm)(pantalla ?pm)(precio ?prm))
    (test (<= ?prm ?pr))
    (test (>= ?pm (tipoPantalla ?p)))
    (test (<= (tipoGama ?g) (tipoGama ?gm)))
    (test (or(and(eq ?w true)(eq ?wm true))(eq ?w false)))
    (test (or(and(eq ?3g true)(eq ?3gm true))(eq ?3g false)))
    (test (<= ?c ?cm))
    =>
    (assert (telefonoUsuario (nombre ?n)(marca ?m)(modelo ?mod)(precio ?prm)))
    ) 



(defmodule orden)
(deftemplate ordenPrecio 
    (slot nombre ( type STRING))
    (slot marca (type STRING))
    (slot modelo (type STRING))
    (slot precio (type NUMBER))
    (slot contador (type NUMBER)(default 0))
    )


(defrule ordenar
    ?p <-(MAIN::usuario (nombre ?n))
    ?r <-(sugerencias::telefonoUsuario (nombre ?n)(marca ?m)(modelo ?mo)(precio ?p1))
    (not(sugerencias::telefonoUsuario(nombre ?n)(marca ?mar)(modelo ?mod)(precio ?p2&:(< ?p2 ?p1))))
    => 
    (assert (ordenPrecio (marca ?m)(modelo ?mo)(nombre ?n)(precio ?p1)(contador ?*cont*)))
    (retract ?r)
    (bind ?*cont* (+ ?*cont* 1))
    )

(defmodule cantidades)
(deftemplate maxProd 
    (slot nombre ( type STRING))
    (slot marca (type STRING))
    (slot modelo (type STRING))
    (slot precio (type NUMBER))
    (slot contador (type NUMBER)(default 0))
    )

(defrule cantidad
    (orden::ordenPrecio (marca ?m)(modelo ?mo)(nombre ?n)(precio ?p)(contador ?c))
    (test (< ?c ?*cantidadMostrar*))
    =>
    (assert (maxProd (marca ?m)(nombre ?n)(modelo ?mo)(precio ?p)))
    )

    
    