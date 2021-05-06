Class {
	#name : #Publication,
	#superclass : #Object,
	#instVars : [
		'user',
		'votes',
		'description',
		'timestamp'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Publication >> addVote: aVote [
	votes add: aVote
]

{ #category : #'as yet unclassified' }
Publication >> negativeVotes [
	^ votes reject:[:vote | vote isLike].

]

{ #category : #'as yet unclassified' }
Publication >> positiveVotes [
	^ votes select:[:vote | vote isLike].

]

{ #category : #accessing }
Publication >> timestamp [
	^ timestamp
]

{ #category : #private }
Publication >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Publication >> user [
	^ user
]

{ #category : #accessing }
Publication >> votes [
	^ votes
]
