Class {
	#name : #OkPredicate,
	#superclass : #OkValidation,
	#instVars : [
		'predicate'
	],
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkPredicate class >> from: oneArgumentValuable [
	^ self new initializePredicate: oneArgumentValuable
]

{ #category : #initialization }
OkPredicate >> initializePredicate: oneArgumentValuable [
	predicate := oneArgumentValuable
]

{ #category : #testing }
OkPredicate >> matches: anObject [
	^ predicate cull: anObject
]
