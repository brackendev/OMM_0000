"
I am BaselineOfOmm0000, the BaselineOf subclass for Omm0000.
"
Class {
	#name : #BaselineOfOMM0000,
	#superclass : #BaselineOf,
	#category : #BaselineOfOMM0000
}

{ #category : #baselines }
BaselineOfOMM0000 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
		baseline: 'RenoirSt' with: [ spec repository: 'github://ba-st/RenoirSt:v7.0.2/source' ];
		project: 'RenoirSt-Deployment'
			copyFrom: 'RenoirSt'
			with: [ spec loads: 'Deployment-Seaside-Extensions' ].
			 spec baseline: 'ELIZA' with: [ spec repository: 'github://brackendev/ELIZA-Smalltalk:v1.1.0/src' ].
			spec package: 'OMM0000']
		
]
