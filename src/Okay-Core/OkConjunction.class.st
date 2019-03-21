Class {
	#name : #OkConjunction,
	#superclass : #OkExpression,
	#category : #'Okay-Core'
}

{ #category : #testing }
OkConjunction >> matches: anObject [
	^ validations allSatisfy: [ :each | each matches: anObject ]
]
