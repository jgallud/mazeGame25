"
Es la clase principal del juego del laberinto
"
Class {
	#name : #Juego,
	#superclass : #Object,
	#instVars : [
		'laberinto',
		'bichos',
		'hilos',
		'person',
		'prototipo'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Juego >> abrirPuertas [
	self laberinto abrirPuertas
]

{ #category : #'gestion-bichos' }
Juego >> agregarBicho:unBicho [
	self bichos add:unBicho.
	unBicho juego:self.
]

{ #category : #'as yet unclassified' }
Juego >> agregarPersonaje:unaCadena [
	self person:(Personaje new nombre:unaCadena).
	self person juego:self.
	self laberinto entrar:self person.
]

{ #category : #accessing }
Juego >> bichos [

	^ bichos
]

{ #category : #accessing }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : #ataques }
Juego >> buscarBicho [
	|bicho posPerson|
	
	posPerson:=self person posicion.
	bicho :=self bichos detect:[:each | each estaVivo and:[each posicion = posPerson ]] ifNone:[nil].
	bicho ifNotNil:[ bicho esAtacadoPor: self person ].
]

{ #category : #ataques }
Juego >> buscarPersonaje:unBicho [
	| posBicho posPerson|
	posBicho:=unBicho posicion. "mensajes 8 y 9"
	posPerson:=self person posicion. "mensajes 10 y 11"
	
	posBicho = posPerson ifTrue:[ self person esAtacadoPor:unBicho].
]

{ #category : #'as yet unclassified' }
Juego >> cerrarPuertas [
	self laberinto cerrarPuertas
]

{ #category : #prototype }
Juego >> clonarLaberinto [
 ^self prototipo veryDeepCopy 
]

{ #category : #laberintos }
Juego >> crearLaberinto2Habitaciones [

	| hab1 hab2 puerta |
	
	hab1:=Habitacion new num:1.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	
	hab2:=Habitacion new num:2.
	hab2 sur:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
	
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM [

	| hab1 hab2 puerta unFM|
	
	unFM:=Creator new. "cablear o acoplar"
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
	
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM:unFM [
"unFM debe ser una instancia de Creator"

	| hab1 hab2 puerta |
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 ponerEnOr:unFM fabricarSur elemento:puerta.
	hab2 ponerEnOr:unFM fabricarNorte elemento:puerta.
	"hab1 sur:puerta.
	hab2 norte:puerta."
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	self agregarBicho:(unFM fabricarBichoAgresivo:hab1).
	self agregarBicho:(unFM fabricarBichoPerezoso:hab2).
	
	^self laberinto
	
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFMD:unFM [
"unFM debe ser una instancia de Creator"

	| hab1 hab2 puerta bomba1 bomba2|
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	
	bomba1:=unFM fabricarBomba. "unFM fabricarBomba:unFM fabricarPared"
	bomba1 em:unFM fabricarPared.
	hab1 este:bomba1.
	
	bomba2:=unFM fabricarBomba.
	bomba2 em:unFM fabricarPared.
	hab2 este:bomba2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
	
]

{ #category : #laberintos }
Juego >> crearLaberinto4H4BFM:unFM [
"unFM debe ser una instancia de Creator"

	| hab1 hab2 hab3 hab4 p12 p13 p34 p24  norte sur este oeste|
	
	norte:=unFM fabricarNorte.
	sur:=unFM fabricarSur.
	este:=unFM fabricarEste.
	oeste:=unFM fabricarOeste.
	
	hab1:=unFM fabricarHabitacion: 1.
	hab2:=unFM fabricarHabitacion: 2.
	hab3:=unFM fabricarHabitacion: 3.
	hab4:=unFM fabricarHabitacion: 4.	
	
	p12:=unFM fabricarPuerta.
	p12 lado1:hab1.
	p12 lado2:hab2.
	hab1 ponerEnOr:sur elemento:p12.
	hab2 ponerEnOr:norte elemento:p12.
	
	p13:=unFM fabricarPuerta. "unFM fabricarPuertaLado1:unaHab lado2:otraHab"
	p13 lado1:hab1.
	p13 lado2:hab3.
	hab1 ponerEnOr:este elemento:p13.
	hab3 ponerEnOr:oeste elemento:p13.
	
	p34:=unFM fabricarPuerta.
	p34 lado1:hab3.
	p34 lado2:hab4.
	hab3 ponerEnOr:sur elemento:p34.
	hab4 ponerEnOr:norte elemento:p34.

	p24:=unFM fabricarPuerta.
	p24 lado1:hab2.
	p24 lado2:hab4.
	hab2 ponerEnOr:este elemento:p24.
	hab4 ponerEnOr:oeste elemento:p24.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	self laberinto agregarHabitacion: hab3.
	self laberinto agregarHabitacion: hab4.
	
	self agregarBicho:(unFM fabricarBichoAgresivo:hab1).
	self agregarBicho:(unFM fabricarBichoAgresivo:hab3).
	self agregarBicho:(unFM fabricarBichoPerezoso:hab2).
	self agregarBicho:(unFM fabricarBichoPerezoso:hab4).

	^self laberinto
	
]

{ #category : #'gestion-bichos' }
Juego >> eliminarBicho:unBicho [
	self bichos remove:unBicho ifAbsent:[Transcript show:'No existe ese bicho';cr.]
]

{ #category : #'gestion-bichos' }
Juego >> estanTodosLosBichosMuertos [
	|bicho|
	
	bicho :=self bichos detect: [ :each | each estaVivo ] ifNone:[nil].
	(bicho isNil and:[ self person estaVivo ]) ifTrue:[ self ganaPersonaje]
	
]

{ #category : #'gestion-bichos' }
Juego >> ganaPersonaje [
	Transcript show:'Fin juego: gana el personaje';cr.
]

{ #category : #accessing }
Juego >> hilos [

	^ hilos
]

{ #category : #accessing }
Juego >> hilos: anObject [

	hilos := anObject
]

{ #category : #initialization }
Juego >> initialize [ 
	bichos:=OrderedCollection new.
	hilos:=Dictionary new.
]

{ #category : #accessing }
Juego >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : #'gestion-bichos' }
Juego >> lanzarBicho:unBicho [
	| proceso |
	Transcript show:unBicho printString ; nextPutAll: ' se activa';cr.
	proceso:=[ [unBicho estaVivo] whileTrue:[unBicho actua]] fork.
 	self hilos at:unBicho put:proceso.



]

{ #category : #'gestion-bichos' }
Juego >> lanzarBichos [

	self bichos do:[:each | self lanzarBicho:each]
]

{ #category : #ataques }
Juego >> muerePersonaje [
	Transcript show:'Fin del juego: Ganan los bichos';cr.
	self terminarBichos.
]

{ #category : #accessing }
Juego >> obtenerHabitacion:unNum [

 "delegar y devolver lo que le de laberinto"
 ^self laberinto obtenerHabitacion:unNum
]

{ #category : #accessing }
Juego >> person [

	^ person
]

{ #category : #accessing }
Juego >> person: anObject [

	person := anObject
]

{ #category : #accessing }
Juego >> prototipo [

	^ prototipo
]

{ #category : #accessing }
Juego >> prototipo: anObject [

	prototipo := anObject
]

{ #category : #'gestion-bichos' }
Juego >> terminarBicho:unBicho [
	unBicho vidas:0.
	
	Transcript show:unBicho printString ; nextPutAll: ' muere';cr.
	
	"comprobar si todos los bichos están muertos ¿es nuestra condición de fin de juego?"
	self estanTodosLosBichosMuertos

]

{ #category : #'gestion-bichos' }
Juego >> terminarBichos [

	self bichos do:[:each | self terminarBicho:each]
]
