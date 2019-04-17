Class {
	#name : #OkNegation,
	#superclass : #OkDifferently,
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkNegation class >> of: aValidation [ 
	^ self new initializeValidation: aValidation
]

{ #category : #testing }
OkNegation >> matches: anObject [
	^ (validation matches: anObject) not
]
