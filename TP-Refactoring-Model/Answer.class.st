Class {
	#name : #Answer,
	#superclass : #Publication,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^ self new
		description: anAnswer
		user: aUser
		question: aQuestion
		yourself .
]

{ #category : #accessing }
Answer >> description [
	^ description
]

{ #category : #'as yet unclassified' }
Answer >> description: anAnswer user: aUser question: aQuestion [
	description := anAnswer .
	user:= aUser.
	question := aQuestion.
]

{ #category : #initialize }
Answer >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #accessing }
Answer >> isTopAnswer [
	.
	^ self positiveVotes >=  ((question sum: [:answer | answer positiveVotes size ]) / question answer size )
]
