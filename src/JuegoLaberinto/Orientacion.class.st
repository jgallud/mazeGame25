"
Interfaz común para las orientaciones

"
Class {
	#name : #Orientacion,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones' }
Orientacion >> obtenerElementoOrEn:unContenedor [
 self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Orientacion >> ponerElemento:unEM en:unContenedor [
	self subclassResponsibility 
]
