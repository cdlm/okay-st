Class {
	#name : #OkAcceptance,
	#superclass : #OkDiagnostic,
	#category : #'Okay-Core'
}

{ #category : #printing }
OkAcceptance >> explainOn: aStream [
	aStream
		nextPutAll: 'Got ';
		print: subject;
		nextPutAll: ', which is ';
		nextPutAll: validation description;
		nextPut: $.
]

{ #category : #testing }
OkAcceptance >> isSuccess [
	^ true
]
