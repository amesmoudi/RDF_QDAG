SELECT ?c1 WHERE 
{ 
	?c1 <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> ?c3 .
	?c1 <http://www.w3.org/2000/01/rdf-schema#label> ?label .
	?c1 <http://yago-knowledge.org/resource#hasInternalWikipediaLinkTo> ?c2 .
	?c2 <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> ?c4 .
	?c2 <http://www.w3.org/2000/01/rdf-schema#label> ?label .
}