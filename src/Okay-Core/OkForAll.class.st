Class {
	#name : #OkForAll,
	#superclass : #OkIndirectly,
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkForAll class >> of: aValidation over: distributionBlock [
	^ self new
		initializeValidation: aValidation
		aspectBlock: distributionBlock
]

{ #category : #testing }
OkForAll >> matches: anObject [
	^ (self validateAspect: anObject) isSuccess
]
