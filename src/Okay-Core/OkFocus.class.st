"
I shift validation of my subject to a specific aspect of it.
"
Class {
	#name : #OkFocus,
	#superclass : #OkIndirectly,
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
OkFocus class >> of: aValidation on: aspectBlock [ 
	^ self new
		initializeValidation: aValidation
		aspectBlock: aspectBlock
]
