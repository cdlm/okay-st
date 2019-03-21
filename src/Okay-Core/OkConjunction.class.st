Class {
	#name : #OkConjunction,
	#superclass : #OkProposition,
	#category : #'Okay-Core'
}

{ #category : #composition }
OkConjunction >> & anotherValidation [
	^ self extendedWith: anotherValidation
]

{ #category : #testing }
OkConjunction >> matches: anObject [
	^ validations allSatisfy: [ :each | each matches: anObject ]
]
