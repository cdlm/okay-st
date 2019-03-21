Class {
	#name : #OkDiagnostic,
	#superclass : #Object,
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkDiagnostic class >> of: anObject accordingTo: aValidation [ 
	^ self new
]

{ #category : #testing }
OkDiagnostic >> isFailure [
	^ self isSuccess not
]

{ #category : #testing }
OkDiagnostic >> isSuccess [
	^ self subclassResponsibility
]
