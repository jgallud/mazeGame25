"
Es un EM de tipo pared que tiene una bomba
"
Class {
	#name : #ParedBomba,
	#superclass : #Pared,
	#instVars : [
		'activa'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
ParedBomba >> activa [

	^ activa
]

{ #category : #accessing }
ParedBomba >> activa: anObject [

	activa := anObject
]

{ #category : #caminar }
ParedBomba >> entrar [
	"deberíamos comprobar si está activa"
	Transcript show:'Te has chocado con una pared bomba';cr.
]

{ #category : #initialization }
ParedBomba >> initialize [ 
	activa:=false.
]
