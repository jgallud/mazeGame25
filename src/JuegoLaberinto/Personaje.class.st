"
Personaje es el usuario en el juego
"
Class {
	#name : #Personaje,
	#superclass : #Ente,
	#instVars : [
		'nombre'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #ataques }
Personaje >> avisar [
	self juego muerePersonaje.
	
]

{ #category : #caminar }
Personaje >> crearNuevoLaberinto:unTunel [
	unTunel crearNuevoLaberinto:self.
]

{ #category : #'as yet unclassified' }
Personaje >> irAlEste [
	self posicion irAlEste:self
]

{ #category : #'as yet unclassified' }
Personaje >> irAlNorte [
	self posicion irAlNorte:self
]

{ #category : #'as yet unclassified' }
Personaje >> irAlOeste [
	self posicion irAlOeste:self
]

{ #category : #'as yet unclassified' }
Personaje >> irAlSur [
	self posicion irAlSur:self
]

{ #category : #accessing }
Personaje >> nombre [

	^ nombre
]

{ #category : #accessing }
Personaje >> nombre: anObject [

	nombre := anObject
]

{ #category : #'as yet unclassified' }
Personaje >> obtenerComandos [
	| lista |
	
	lista:=OrderedCollection new.
	self posicion recorrer:[:each | lista addAll:each obtenerComandos].
	^lista
]

{ #category : #ataques }
Personaje >> puedeAtacar [
	self juego buscarBicho. 
]
