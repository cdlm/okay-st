Class {
	#name : #Okay,
	#superclass : #Object,
	#instVars : [
		'description'
	],
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
Okay class >> anything [
	^ self if: [ true ]
]

{ #category : #'instance creation' }
Okay class >> if: aPredicate [
	^ OkPredicate from: aPredicate
]

{ #category : #testing }
Okay class >> isAbstract [
	^ self == Okay
]

{ #category : #'instance creation' }
Okay class >> nothing [
	^ self if: [ false ]
]

{ #category : #composition }
Okay >> & anotherValidation [
	^ OkConjunction with: self with: anotherValidation
]

{ #category : #validation }
Okay >> acceptanceOf: anObject [ 
	^ OkAcceptance of: anObject accordingTo: self
]

{ #category : #displaying }
Okay >> defaultDescription [
	^ self subclassResponsibility
]

{ #category : #displaying }
Okay >> description [
	^ description ifNil: [ self defaultDescription ]
]

{ #category : #initialization }
Okay >> description: expectationString [ 
	description := expectationString
]

{ #category : #testing }
Okay >> matches: anObject [
	^ self subclassResponsibility
]

{ #category : #composition }
Okay >> not [
	^ OkNegation of: self
]

{ #category : #validation }
Okay >> rejectionOf: anObject [ 
	^ OkRejection of: anObject accordingTo: self
]

{ #category : #validation }
Okay >> validate: anObject [
	^ (self matches: anObject)
		ifTrue: [ self acceptanceOf: anObject ]
		ifFalse: [ self rejectionOf: anObject ]
]

{ #category : #composition }
Okay >> | anotherValidation [
	^ OkDisjunction with: self with: anotherValidation
]
