(* Question 1 *)
(*
Function name : length
Function arguments :  	h::t - a list of elements
Return Type : an integer containing length of list.
Function working : If list becomes empty return 0 else keep adding 1 and removing head from the
list recursively.
*)
fun length ([]) = 0
| length (h::t) = 1 + length (t);
(*
Function name : helpReverse
Function arguments : 	h::t - a list of elements
						p - another list of elements
Return Type : A single list of elements
Function working : If first list is empty it returns the second list. Other wise it takes head of first list recursively and 
append it to the head of second list. Hence the first list appended to second list in the reverse order.
*)
fun helpReverse ([], p) = p
| helpReverse (h::t, p) = helpReverse(t, h::p);
(*
Function name : reverse
Function arguments :  a list of elements
Return Type : A single list of elements with its order reversed
Function working : Function calls helpReverse function with first list as the one which it got as argument and second
argument as an empty list. tailReverse function returns a list which is reverse in the order.
*)
fun reverse l = helpReverse (l, []);
(*
Function name : lastToFront
Function arguments :  a list of elements
Return Type : a list of elements
Function working : Function uses reverse function to reverse the list. It takes the head of the reversed list and append it 
to tail of the reverse list after againg reversing it.
*)
fun lastToFront l = hd (reverse l) :: reverse (tl (reverse l));
(*
Function name : rotate
Function arguments :  	l - a list of elements
						n - an integer determining number of clockwise rotation list need to be given.
Return Type : a list of elements
Function working : If n is 0 return list, if list is empty return the empty list. Otherwise, check if n is greater than length of 
list then call rotater with n mode length of l, else call rotate on the list returned by the function lastToFront (which gives
single clockwise rotation) n times.
*)
fun rotate (l, 0) = l
| rotate ([], n) = []
| rotate (l, n) = if (n > length (l)) then rotate (l, n mod length (l))
else rotate (lastToFront (l), n-1);


