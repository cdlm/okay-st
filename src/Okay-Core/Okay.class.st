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
Okay class >> focusingOn: focusBlock if: aPredicate [ 
	self shouldBeImplemented.
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

{ #category : #'instance creation' }
Okay class >> unless: aPredicate [
	^ (OkPredicate from: aPredicate) not
]

{ #category : #composing }
Okay >> & anotherValidation [
	^ OkConjunction with: self with: anotherValidation
]

{ #category : #validation }
Okay >> acceptanceOf: anObject [ 
	^ OkAcceptance of: anObject accordingTo: self
]

{ #category : #composing }
Okay >> allOf: distributionBlock [
	^ OkForAll of: self over: distributionBlock
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

{ #category : #composing }
Okay >> focusedOn: aspectBlock [
	^ OkFocus of: self on: aspectBlock
]

{ #category : #testing }
Okay >> matches: anObject [
	^ self subclassResponsibility
]

{ #category : #composing }
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

{ #category : #composing }
Okay >> | anotherValidation [
	^ OkDisjunction with: self with: anotherValidation
]
