Class {
	#name : #OkNegation,
	#superclass : #OkValidation,
	#instVars : [
		'validation'
	],
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkNegation class >> of: aValidation [ 
	^ self new initializeValidation: aValidation
]

{ #category : #initialization }
OkNegation >> initializeValidation: aValidation [ 
	validation := aValidation
]

{ #category : #testing }
OkNegation >> matches: anObject [
	^ (validation matches: anObject) not
]
