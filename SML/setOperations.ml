(* Question 5 *)
(*
Function name : isPresent
Function arguments :  	a - an element
						h::t - a list of elements
Return Type : a bool value
Function working : Check if a is equal to head than return true else check in the rest of the list recursively, if an empty list 
is found, returns false.
*)
fun isPresent (a,[]) = false
| isPresent (a,h::t) = if (a = h) then true 
else isPresent (a,t);
(*
Function name : subset
Function arguments :  	h::t - a list of elements
						l - another list of elements
Return Type : a bool value
Function working : Check if each element of first list is present in the second list than returns true else false.
*)
fun subset ([],l) = true 
| subset (h::t,l) = if isPresent (h,l) then subset (t,l)
else false;
(*
Function name : checkOther
Function arguments :  	h::t - a list of elements
						l - another list of elements
Return Type : a list of elements
Function working : Recursively returns the elements of first list which are not present in the second list.
*)
fun checkOther ([],l) = []
| checkOther (h::t,l) = if isPresent(h,l) then checkOther (t,l)
else h::checkOther (t,l);
(*
Function name : checkOther
Function arguments :  	l1 - a list of elements
						l2 - another list of elements
Return Type : a list of elements
Function working : Recursevly returns the elements of first list which are not present in the second list append 
those with the element of second list which are not present in the first list.
*)
fun disjointUnion ([],l) = l
| disjointUnion (l,[]) = l
| disjointUnion (l1,l2) = checkOther (l1,l2) @ checkOther (l2,l1);
(*
Function name : union
Function arguments :  	h::t - a list of elements
						l - another list of elements
Return Type : a list of elements
Function working : Checks if each element of first list is present in the second , if not append it the second list as when first
list is empty second list is returned.
*)
fun union ([],l) = l 
| union (h::t,l) = if isPresent (h,l) then union (t,l)
else h::union (t,l); 
(*
Function name : intersection
Function arguments :  	h::t - a list of elements
						l - another list of elements
Return Type : a list of elements
Function working : Checks if each element of first list is present in the second , if yes append it to the empty list as when first
list is empty, an empty list is returned.
*)
fun intersection ([],l) = [] 
| intersection (h::t,l) = if isPresent (h,l) then h::intersection (t,l)
else intersection (t,l);
(*
Function name : setdiff
Function arguments :  	h::t - a list of elements
						l - another list of elements
Return Type : a list of elements
Function working : Checks if each element of first list is present in the second , if not append it to the empty list as when first
list is empty, an empty list is returned.
*)
fun setdiff ([],l) = []
| setdiff (h::t,l) = if isPresent (h,l) then setdiff(t,l)
else h::setdiff (t,l);
(*
Function name : insert
Function arguments :  	x - an element
						h::t - a list of elements
Return Type : a list of list of elements
Function working : append x to the each element of the list.
*)
fun insert (x,[]) = []
| insert (x,h::t) = union ([x],h)::insert (x,t);
(*
Function name : insert
Function arguments :  	h::t - a list of elements
Return Type : a list of list of elements
Function working : Make union of each element with each other element of the list of elements.
*)
fun power([]) = [[]]
| power (h::t) = union (power (t),insert (h,power (t)));
