Class {
	#name : #Okay,
	#superclass : #Object,
	#category : #'Okay-Core'
}

{ #category : #'instance creation' }
Okay class >> anything [
	^ self if: [ true ]
]

{ #category : #'instance creation' }
Okay class >> if: aPredicate [
	^ OkPredicate from: aPredicate
]

{ #category : #'instance creation' }
Okay class >> nothing [
	^ self if: [ false ]
]
