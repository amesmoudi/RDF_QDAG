SELECT ?x ?y WHERE 
{ 
?x <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#ResearchGroup> .
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#subOrganizationOf> ?y . 
?y <http://swat.cse.lehigh.edu/onto/univ-bench.owl#subOrganizationOf> <http://www.University0.edu> .
}