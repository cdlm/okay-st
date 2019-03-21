Class {
	#name : #OkExpression,
	#superclass : #OkValidation,
	#instVars : [
		'validations'
	],
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkExpression class >> with: aValidation with: anotherValidation [
	^ self withAll: { aValidation. anotherValidation }
]

{ #category : #'instance creation' }
OkExpression class >> withAll: aCollection [ 
	^ self new initializeValidations: aCollection
]

{ #category : #initialization }
OkExpression >> initializeValidations: aCollection [ 
	validations := aCollection
]
