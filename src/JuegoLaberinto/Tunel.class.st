"
Tunel es un Proxy virtual. Cuando el personaje entre en el tunel, se creará un nuevo laberinto.
"
Class {
	#name : #Tunel,
	#superclass : #Hoja,
	#instVars : [
		'laberinto'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Tunel >> crearNuevoLaberinto:alguien [
	Transcript show:alguien printString ; nextPutAll:' crea un nuevo laberinto';cr.
	self laberinto:alguien juegoClonaLaberinto.
	Transcript
				show: alguien printString;
				nextPutAll: ' entra en un nuevo laberinto';
				cr.
	self laberinto entrar:alguien 
]

{ #category : #caminar }
Tunel >> entrar: alguien [

	self laberinto
		ifNil: [ alguien crearNuevoLaberinto: self ]
		ifNotNil: [
			Transcript
				show: alguien printString;
				nextPutAll: ' entra en un nuevo laberinto';
				cr.
			self laberinto entrar: alguien ]
]

{ #category : #consulta }
Tunel >> esTunel [
	^true
]

{ #category : #accessing }
Tunel >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Tunel >> laberinto: anObject [

	laberinto := anObject
]
