(* Question 8 *)
(*
Function name : tailfibonacci
Function arguments : 	n - an integer
						a - an integer
						b - an integer
Return Type : An integer.
Function working : This function recursively calculate the nth term of the fibonacci series. The nth term is always 
stored in a while b prepares for the next term.
*)
fun tailfibonacci (n,a,b) = if n=0 then a
else tailfibonacci (n-1,b,a+b);
(*
Function name : fibonacci
Function arguments : 	n - an integer
Return Type : An integer.
Function working : This function calls tailfibonacci which returns the nth term of fibonacci series.
*)
fun fibonacci n = tailfibonacci (n,0,1);
(*
Function name : tailReverse
Function arguments : 	h::t - a list of elements
						p - another list of elements
Return Type : A single list of elements
Function working : If first list is empty it returns the second list. Other wise it takes head of first list recursively and 
append it to the head of second list. Hence the first list appended to second list in the reverse order.
*)
fun tailReverse ([], p) = p
| tailReverse (h::t, p) = tailReverse(t, h::p);
(*
Function name : reverse
Function arguments :  a list of elements
Return Type : A single list of elements with its order reversed
Function working : Function calls tailReverse function with first list as the one which it got as argument and second
argument as an empty list. tailReverse function returns a list which is reverse in the order.
*)
fun reverse l = tailReverse (l, []);
(*
Function name : tailSum
Function arguments :  	h::t - a list of elements
						sum - an integer or real storing the sum of the elements of the list.
Return Type : an integer or real containing the sum of list of elements.
Function working : If list becomes empty return the value stored in the sum. Otherwise recursively keep on adding 
head of the list to the sum.
*)
fun tailSum ([],sum) = sum
| tailSum (h::t,sum) = tailSum (t,h+sum);
(*
Function name : sum
Function arguments :  a list of integer or real number.
Return Type : an integer or real containing the sum of list of elements.
Function working : Function calls tailSum function to calculate sum of list of elements.
*)
fun sum l = tailSum (l,0);
