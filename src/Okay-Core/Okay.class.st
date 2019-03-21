Class {
	#name : #Okay,
	#superclass : #Object,
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
Okay class >> anything [
	^ OkAnything new
]

{ #category : #'instance creation' }
Okay class >> nothing [
	^ OkAnything new not
]
