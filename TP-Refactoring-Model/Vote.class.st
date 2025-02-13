Class {
	#name : #Vote,
	#superclass : #Object,
	#instVars : [
		'isLike',
		'timestamp',
		'publication',
		'user'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Vote class >> user: aUser dislikesPublication: aPublication [
	^ self new
		user: aUser
		publication: aPublication;
		dislike;
		yourself
]

{ #category : #'instance creation' }
Vote class >> user: aUser likesPublication: aPublication [
	^ self new
		user: aUser
		publication: aPublication
		yourself
]

{ #category : #private }
Vote >> dislike [
	isLike := false.
]

{ #category : #initialize }
Vote >> initialize [
	isLike := true.
	timestamp := DateAndTime now.
	
]

{ #category : #accessing }
Vote >> isLike [
	^ isLike
]

{ #category : #accessing }
Vote >> publication [
	^ publication
]

{ #category : #accessing }
Vote >> user [
	^ user
]

{ #category : #'instance creation' }
Vote >> user: aUser publication: aPublication [
		user:= aUser.
		publication:= aPublication.
]
