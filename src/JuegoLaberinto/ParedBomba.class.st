"
ParedBomba es una subclase de Pared que tiene una variable de instancia que se llama activa
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
	Transcript show:'Te has chocado con una pared bomba';cr.
]
