SELECT ?x ?y WHERE 
{ 
?x <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#GraduateStudent> . 
?y <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#University> . 
?z <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#Department> . 
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#memberOf> ?z . 
?z <http://swat.cse.lehigh.edu/onto/univ-bench.owl#subOrganizationOf> ?y . 
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#undergraduateDegreeFrom> ?y .
}