(* Question 2 *)
(*
Function name : dotProduct
Function arguments : 	h1::t1 - a list of elements
						h2::t2 - another list of elements
Return Type : A single value
Function working : If both list is empty return 0. Other wise, multuply two heads and add them to the 
recursive call to the function with tails of both lists.
*)
fun dotProduct [] [] = 0
| dotProduct (h1::t1) (h2::t2) = h1*h2 + dotProduct t1 t2 ;
(*
Function name : transpose
Function arguments : 	m - list of list of element
Return Type : A list of list of element each list elements has the elements of each level of the input list elements
Function working : If the first list is empty return empty. Otherwise apply head to each list in the list and form a list
of it and call transpose function to do this on the rest of the lists in the list.
*)
fun transpose ([]::_) = [] 
| transpose (m) = (map hd m)::transpose(map tl m);
(*
Function name : matrixMul
Function arguments : 	m1 - list of list of element
						m2 - list of list of element
Return Type : A list of list of element
Function working : It map dotproduct function to each list with each list of transpose of the second list of list forming 
head of the resultant list of list and append this to the recursive call to the rest of the list of list.
*)
fun matrixMul [] _  = []
| matrixMul _ [] = []
| matrixMul m1 m2 = map (dotProduct (hd (m1))) (transpose (m2)):: (matrixMul (tl (m1))  m2);


