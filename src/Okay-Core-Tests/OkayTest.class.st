Class {
	#name : #OkayTest,
	#superclass : #TestCase,
	#category : #'Okay-Core-Tests'
}

{ #category : #tests }
OkayTest >> testConjunctionAcceptsWhenAllOk [
	| validation subject |
	subject := Object new.
	validation := Okay anything
		& (Okay if: [ :it | it notNil ])
		& (Okay if: [ :it | it == subject ]).

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
	subject := Object new.
	validation := Okay nothing
		| Okay anything
		| (Okay if: [ :it | it == subject ]).

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
OkayTest >> testPredicateAcceptanceCustomReason [
	| rule diagnostic |
	rule := (Okay if: #even)
		description: 'a multiple of two'.
	diagnostic := rule validate: 2.
	
	self
		assert: diagnostic description
		equals: 'Got 2, which is a multiple of two.'
]

{ #category : #tests }
OkayTest >> testPredicateRejectionCustomReason [
	| rule diagnostic |
	rule := (Okay if: #even)
		description: 'a multiple of two'.
	diagnostic := rule validate: 3.
	
	self
		assert: diagnostic description
		equals: 'Got 3, but expected a multiple of two.'
]

{ #category : #tests }
OkayTest >> testPredicateRejectionDefaultReason [
	| rule diagnostic |
	rule := Okay if: #even.
	diagnostic := rule validate: 2.
	
	self
		assert: diagnostic description
		equals: 'Got 2, which is an object satisfying #even.'

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

{ #category : #tests }
OkayTest >> testValidatesPredicate [
	| validation |
	validation := Okay if: #even.

	self deny: (validation matches: 3).
	self assert: (validation matches: 2)

]
