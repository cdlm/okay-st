Class {
	#name : #OkDisjunction,
	#superclass : #OkExpression,
	#category : #'Okay-Core'
}

{ #category : #testing }
OkDisjunction >> matches: anObject [
	^ validations anySatisfy: [ :each | each matches: anObject ]
]
