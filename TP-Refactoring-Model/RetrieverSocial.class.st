Class {
	#name : #RetrieverSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
RetrieverSocial >> retrieveQuestions: aUser [
			^ (self ordenarCol: 
					(aUser following flatCollect:[ :follow | follow questions ]) 
					de: aUser )
						
]
