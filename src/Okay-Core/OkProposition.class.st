Class {
	#name : #OkProposition,
	#superclass : #OkValidation,
	#instVars : [
		'validations'
	],
	#category : #'Okay-Core'
}

{ #category : #testing }
OkProposition class >> isAbstract [
	^ self == OkProposition
]

{ #category : #'instance creation' }
OkProposition class >> with: aValidation with: anotherValidation [
	^ self withAll: { aValidation. anotherValidation }
]

{ #category : #'instance creation' }
OkProposition class >> withAll: aCollection [ 
	^ self new initializeValidations: aCollection
]

{ #category : #copying }
OkProposition >> extendedWith: anotherValidation [
	^ self class withAll: (validations copyWith: anotherValidation)
]

{ #category : #initialization }
OkProposition >> initializeValidations: aCollection [ 
	validations := aCollection
]
