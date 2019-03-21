Class {
	#name : #OkDisjunction,
	#superclass : #OkProposition,
	#category : #'Okay-Core'
}

{ #category : #testing }
OkDisjunction >> matches: anObject [
	^ validations anySatisfy: [ :each | each matches: anObject ]
]

{ #category : #composition }
OkDisjunction >> | anotherValidation [
	^ self extendedWith: anotherValidation
]
