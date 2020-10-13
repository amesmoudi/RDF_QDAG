SELECT ?x ?y WHERE 
{
?x <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#UndergraduateStudent> . 
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#memberOf> ?y . 
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#emailAddress> ?z . 
?y <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#Department> .
?y <http://swat.cse.lehigh.edu/onto/univ-bench.owl#subOrganizationOf> <http://www.University0.edu> .
}