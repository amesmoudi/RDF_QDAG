SELECT ?name1 ?name2 WHERE 
{
?p1 <http://www.w3.org/2000/01/rdf-schema#label> ?name1 .
?p2 <http://www.w3.org/2000/01/rdf-schema#label> ?name2 .
?p1 <http://yago-knowledge.org/resource/isMarriedTo> ?p2 .
?p1 <http://yago-knowledge.org/resource/wasBornIn> ?city .
?p2 <http://yago-knowledge.org/resource/wasBornIn> ?city.
}