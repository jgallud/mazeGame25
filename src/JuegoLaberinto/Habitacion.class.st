"
Es un EM que tiene cuatro lados
"
Class {
	#name : #Habitacion,
	#superclass : #Contenedor,
	#instVars : [
		'num',
		'norte',
		'sur',
		'este',
		'oeste'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Habitacion >> entrar [
	Transcript show:'Estas en la habitación';cr.

]

{ #category : #consulta }
Habitacion >> esHabitacion [
	^true
]

{ #category : #accessing }
Habitacion >> este [

	^ este
]

{ #category : #accessing }
Habitacion >> este: anObject [

	este := anObject
]

{ #category : #accessing }
Habitacion >> norte [

	^ norte
]

{ #category : #accessing }
Habitacion >> norte: anObject [

	norte := anObject
]

{ #category : #accessing }
Habitacion >> num [

	^ num
]

{ #category : #accessing }
Habitacion >> num: anObject [

	num := anObject
]

{ #category : #accessing }
Habitacion >> oeste [

	^ oeste
]

{ #category : #accessing }
Habitacion >> oeste: anObject [

	oeste := anObject
]

{ #category : #accessing }
Habitacion >> sur [

	^ sur
]

{ #category : #accessing }
Habitacion >> sur: anObject [

	sur := anObject
]
