"
Se encarga de crear laberintos con bombas
"
Class {
	#name : #CreatorB,
	#superclass : #Creator,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'factory method' }
CreatorB >> fabricarPared [
	^ParedBomba new
]
