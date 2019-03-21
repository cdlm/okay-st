Class {
	#name : #OkPredicate,
	#superclass : #OkValidation,
	#instVars : [
		'predicate'
	],
	#category : #'Okay-Core'
}

{ #category : #initialization }
OkPredicate >> initialize [
	predicate := [ true ]
]

{ #category : #testing }
OkPredicate >> matches: anObject [
	^ predicate cull: anObject
]
