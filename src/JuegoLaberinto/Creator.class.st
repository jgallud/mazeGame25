"
CreatorB crea laberintos con Pared normal
"
Class {
	#name : #Creator,
	#superclass : #Object,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'as yet unclassified' }
Creator >> cambiarAModoAgresivo:unBicho [

	unBicho modo:Agresivo new.
	unBicho poder:10.
	
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoAgresivo [
	| bicho |
	
	bicho:=Bicho new.
	bicho modo: Agresivo new.
	bicho vidas:5.
	bicho poder:5.
	^bicho
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoPerezoso [
	| bicho |
	
	bicho:=Bicho new.
	bicho modo: Perezoso new.
	bicho poder:1.
	bicho vidas:1.
	"bicho poder:5."
	^bicho
]

{ #category : #'factory method' }
Creator >> fabricarBomba [
	^Bomba new
]

{ #category : #'factory method' }
Creator >> fabricarHabitacion:unNum [
	|hab|
	hab:=Habitacion new.
	hab num:unNum.
	hab este:self fabricarPared.
	hab oeste:self fabricarPared.
	hab norte:self fabricarPared.
	hab sur:self fabricarPared.
	^hab	
]

{ #category : #'factory method' }
Creator >> fabricarJuego [
" ^ representa return"
	^Juego new
]

{ #category : #'factory method' }
Creator >> fabricarLaberinto [
	^Laberinto new 
]

{ #category : #'factory method' }
Creator >> fabricarPared [
	^Pared new
]

{ #category : #'factory method' }
Creator >> fabricarPuerta [
	^Puerta new 
]
