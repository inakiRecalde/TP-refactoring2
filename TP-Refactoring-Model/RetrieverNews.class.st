Class {
	#name : #RetrieverNews,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
RetrieverNews class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #accesing }
RetrieverNews >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #'as yet unclassified' }
RetrieverNews >> retrieveQuestions: aUser [
	^ (self ordenarCol: (cuoora questions 
			select: [:q | (q timestamp asDate = Date today)]) de: aUser).
				
]
