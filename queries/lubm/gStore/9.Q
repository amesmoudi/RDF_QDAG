SELECT ?x ?y WHERE 
{ 
?x <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#UndergraduateStudent> . 
?y <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#FullProfessor> . 
?z <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://swat.cse.lehigh.edu/onto/univ-bench.owl#Course> . 
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#advisor> ?y . 
?x <http://swat.cse.lehigh.edu/onto/univ-bench.owl#takesCourse> ?z . 
?y <http://swat.cse.lehigh.edu/onto/univ-bench.owl#teacherOf> ?z . 
}