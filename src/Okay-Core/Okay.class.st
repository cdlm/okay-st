Class {
	#name : #Okay,
	#superclass : #Object,
	#instVars : [
		'rejectionReason'
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
Okay >> defaultReason [
	^ self subclassResponsibility
]

{ #category : #testing }
Okay >> matches: anObject [
	^ self subclassResponsibility
]

{ #category : #composition }
Okay >> not [
	^ OkNegation of: self
]

{ #category : #displaying }
Okay >> reason [
	^ rejectionReason ifNil: [ self defaultReason ]
]

{ #category : #initialization }
Okay >> rejectWith: aRejectionString [ 
	rejectionReason := aRejectionString
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
