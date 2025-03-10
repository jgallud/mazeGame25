Class {
	#name : #Norte,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Norte class >> default [
	UnicaInstancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia
]

{ #category : #'instance creation' }
Norte class >> new [
	self error:'No se puede crear objeto'
]

{ #category : #'as yet unclassified' }
Norte >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos norte entrar:unBicho
]

{ #category : #'gestion-orientaciones' }
Norte >> obtenerElementoOrEn:unContenedor [
	^unContenedor norte
]

{ #category : #'as yet unclassified' }
Norte >> ponerElemento:unEM en:unContenedor [
	unContenedor norte:unEM
]

{ #category : #recorrido }
Norte >> recorrer:unBloque contenedor:unContenedor [
	unContenedor norte recorrer:unBloque
]
