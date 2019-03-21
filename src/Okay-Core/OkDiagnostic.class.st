Class {
	#name : #OkDiagnostic,
	#superclass : #Object,
	#category : #'Okay-Core'
}

{ #category : #testing }
OkDiagnostic class >> isAbstract [
	^ self == OkDiagnostic
]

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
