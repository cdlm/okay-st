Class {
	#name : #OkRejection,
	#superclass : #OkDiagnostic,
	#category : #'Okay-Core'
}

{ #category : #printing }
OkRejection >> explainOn: aStream [
	aStream
		nextPutAll: 'Got ';
		print: subject;
		nextPutAll: ', but expected ';
		nextPutAll: validation reason;
		nextPut: $.
]

{ #category : #testing }
OkRejection >> isSuccess [
	^ false
]
