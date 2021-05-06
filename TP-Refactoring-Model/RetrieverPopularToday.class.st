Class {
	#name : #RetrieverPopularToday,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
RetrieverPopularToday class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #accesing }
RetrieverPopularToday >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #'as yet unclassified' }
RetrieverPopularToday >> popularCol [
	^cuoora questions select:[:q | (q timestamp asDate = Date today )].
]

{ #category : #'as yet unclassified' }
RetrieverPopularToday >> retrieveQuestions: aUser [
	^ (self ordenarCol: 
		(self popularCol select: [:q | q positiveVotes size >= 
			((cuoora questions sum: [:qu | qu positiveVotes size ]) / self popularCol size) ])	 
		de: aUser).
							
]
