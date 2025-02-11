Class {
	#name : #ElementoMapa,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
ElementoMapa >> entrar [
	"deberemos indicar quien entrar"
	self subclassResponsibility 
]
