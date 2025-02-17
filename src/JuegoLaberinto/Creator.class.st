"
CreatorB crea laberintos con Pared normal
"
Class {
	#name : #Creator,
	#superclass : #Object,
	#category : #'JuegoLaberinto-FactoryMethod'
}

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
