Class {
	#name : #OkIndirectly,
	#superclass : #OkDifferently,
	#instVars : [
		'aspectBlock'
	],
	#category : #'Okay-Core'
}

{ #category : #initialization }
OkIndirectly >> initializeValidation: aValidation aspectBlock: aBlock [
	validation := aValidation.
	aspectBlock := aBlock
]

{ #category : #validation }
OkIndirectly >> validateAspect: anObject [
	^ ((aspectBlock value: anObject)
				collect: [ :each | validation validate: each ])
			detect: #isFailure
			ifNone: [ self acceptanceOf: anObject ]
	"^ OkCompositeDiagnosis withAll:
		((aspectBlock value: anObject)
			collect: [ :each | validation validate: each ])"
]
