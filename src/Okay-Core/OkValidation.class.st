Class {
	#name : #OkValidation,
	#superclass : #Object,
	#category : #'Okay-Core'
}

{ #category : #composition }
OkValidation >> & anotherValidation [
	^ OkConjunction with: self with: anotherValidation
]

{ #category : #validation }
OkValidation >> acceptanceOf: anObject [ 
	^ OkAcceptance of: anObject accordingTo: self
]

{ #category : #testing }
OkValidation >> matches: anObject [
	^ self subclassResponsibility
]

{ #category : #composition }
OkValidation >> not [
	^ OkNegation of: self
]

{ #category : #validation }
OkValidation >> rejectionOf: anObject [ 
	^ OkRejection of: anObject accordingTo: self
]

{ #category : #validation }
OkValidation >> validate: anObject [
	^ (self matches: anObject)
		ifTrue: [ self acceptanceOf: anObject ]
		ifFalse: [ self rejectionOf: anObject ]
]

{ #category : #composition }
OkValidation >> | anotherValidation [
	^ OkDisjunction with: self with: anotherValidation
]
