Class {
	#name : #OkDifferently,
	#superclass : #Okay,
	#instVars : [
		'validation'
	],
	#category : #'Okay-Core'
}

{ #category : #initialization }
OkDifferently >> initializeValidation: aValidation [ 
	validation := aValidation
]
