Class {
	#name : #OkDiagnostic,
	#superclass : #Object,
	#instVars : [
		'subject',
		'validation'
	],
	#category : #'Okay-Core'
}

{ #category : #testing }
OkDiagnostic class >> isAbstract [
	^ self == OkDiagnostic
]

{ #category : #'instance creation' }
OkDiagnostic class >> of: anObject accordingTo: aValidation [ 
	^ self new initializeSubject: anObject validation: aValidation
]

{ #category : #accessing }
OkDiagnostic >> description [
	^ String streamContents: [ :str | self explainOn: str ]
]

{ #category : #printing }
OkDiagnostic >> explainOn: aStream [
	aStream
		nextPutAll: 'Got ';
		print: subject;
		nextPutAll: ', which is ';
		nextPutAll: self validationDescription;
		nextPut: $.
]

{ #category : #initialization }
OkDiagnostic >> initializeSubject: anObject validation: aValidation [ 
	subject := anObject.
	validation := aValidation
]

{ #category : #testing }
OkDiagnostic >> isFailure [
	^ self isSuccess not
]

{ #category : #testing }
OkDiagnostic >> isSuccess [
	^ self subclassResponsibility
]
