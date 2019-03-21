Class {
	#name : #BaselineOfOkay,
	#superclass : #BaselineOf,
	#category : #BaselineOfOkay
}

{ #category : #baselines }
BaselineOfOkay >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
		spec 
			package: 'Okay-Core';
			package: 'Okay-Core-Tests' with: [ spec requires: #('Okay-Core') ]
	]
]
