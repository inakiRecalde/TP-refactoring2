Class {
	#name : #RetrieverTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
RetrieverTopics >> retrieveQuestions: aUser [
	^ self ordenarCol: (aUser topics flatCollect: [ :topic | topic questions ]) de: aUser.
"|topicsCol temp qRet |
topicsCol := OrderedCollection new.
			aUser topics do:[ :topic | topicsCol addAll: topic questions ].
			temp := topicsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size).
			
^qRet reject:[:q | q user = aUser]."
]
