Class {
	#name : #Question,
	#superclass : #Publication,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ self new
		title: title
		description: aDescription
		user: aUser
		yourself.
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ self new
		title: title
		description: aDescription
		user: aUser
		topic: aTopic
		yourself.
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #accessing }
Question >> description [
	^ description
]

{ #category : #'initalize-release' }
Question >> initialize [
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #'instance creation' }
Question >> title: aTitle description: aDescription user: aUser [
	title:= aTitle.
	description:= aDescription .
	user:= aUser.
]

{ #category : #'instance creation' }
Question >> title: aTitle description: aDescription user: aUser topic: aTopic [
		
		self title: aTitle description: aDescription user: aUser.
		topics add: aTopic.
		aTopic addQuestion: self.
		
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
