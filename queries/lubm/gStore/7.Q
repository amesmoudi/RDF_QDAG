SELECT ?x ?y WHERE 
{ 
?x <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#UndergraduateStudent> .
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#takesCourse> ?y . 
?y <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#Course> .
<http://www.Department0.University0.edu/AssociateProfessor0> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#teacherOf> ?y .
}