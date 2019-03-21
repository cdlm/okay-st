Class {
	#name : #OkayTest,
	#superclass : #TestCase,
	#category : #'Okay-Core-Tests'
}

{ #category : #tests }
OkayTest >> testConjunctionAcceptsWhenAllOk [
	| validation subject |
	validation := Okay anything & Okay anything.
	subject := Object new.

	self assert: (validation matches: subject).
]

{ #category : #tests }
OkayTest >> testConjunctionRejectsUnlessAllOk [
	| validation subject |
	validation := Okay anything & Okay nothing.
	subject := Object new.

	self deny: (validation matches: subject).
]

{ #category : #tests }
OkayTest >> testDisjunctionAcceptsWhenSomeOk [
	| validation subject |
	validation := Okay nothing | Okay anything.
	subject := Object new.

	self assert: (validation matches: subject).
]

{ #category : #tests }
OkayTest >> testDisjunctionRejectsWhenNoneOk [
	| validation subject |
	validation := Okay nothing | Okay nothing.
	subject := Object new.

	self deny: (validation matches: subject).
]

{ #category : #tests }
OkayTest >> testValidatesAnything [
	| validation subject |
	validation := Okay anything.
	subject := Object new.
	
	self assert: (validation matches: subject).
	self assert: (validation validate: subject) isSuccess.
	self deny: (validation validate: subject) isFailure
]

{ #category : #tests }
OkayTest >> testValidatesNothing [
	| validation subject |
	validation := Okay nothing.
	subject := Object new.
	
	self deny: (validation matches: subject).
	self assert: (validation validate: subject) isFailure.
	self deny: (validation validate: subject) isSuccess
]
