Class {
	#name : #OkPredicate,
	#superclass : #Okay,
	#instVars : [
		'predicate'
	],
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkPredicate class >> from: oneArgumentValuable [
	^ self new initializePredicate: oneArgumentValuable
]

{ #category : #displaying }
OkPredicate >> defaultReason [
	^ 'an object satisfying ' , predicate printString
]

{ #category : #initialization }
OkPredicate >> initializePredicate: oneArgumentValuable [
	predicate := oneArgumentValuable
]

{ #category : #testing }
OkPredicate >> matches: anObject [
	^ predicate cull: anObject
]
