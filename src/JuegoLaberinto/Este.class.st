"
Este es un punto cardinal, es la dirección por donde sale el sol
"
Class {
	#name : #Este,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Este >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos este entrar:unBicho
]

{ #category : #'gestion-orientaciones' }
Este >> obtenerElementoOrEn:unContenedor [
	^unContenedor este
]

{ #category : #'as yet unclassified' }
Este >> ponerElemento:unEM en:unContenedor [
	unContenedor este:unEM
]

{ #category : #recorrido }
Este >> recorrer:unBloque contenedor:unContenedor [
	unContenedor este recorrer:unBloque
]
