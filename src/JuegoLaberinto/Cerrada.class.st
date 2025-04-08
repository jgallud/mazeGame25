"
Cerrada: estado de la puerta que impide el paso
"
Class {
	#name : #Cerrada,
	#superclass : #EstadoPuerta,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Cerrada >> abrir:unaPuerta [
	Transcript show:unaPuerta printString ; nextPutAll: ' abierta'; cr.
	unaPuerta estado:Abierta new.
]

{ #category : #'as yet unclassified' }
Cerrada >> cerrar:unaPuerta [
	"La puerta ya está cerrada"
]

{ #category : #'as yet unclassified' }
Cerrada >> entrar:alguien puerta:unaPuerta [
	Transcript show:alguien printString ; nextPutAll: ' choca con '; nextPutAll: unaPuerta printString ;cr.
]
