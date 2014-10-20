(* Question 7 *)
(*
Function name : sort
Function arguments :  	h::t - a list of elements
Return Type : a list of elements
Function working : Compare the first two elements, if first is greater than second -> exchange it 
if it is equal -> do nothing
else compare second element with the next element by recursevely calling it self.
*)
fun bsort [] = []
| bsort [h] = [h]
| bsort (h::i::t) = if h>i then i::h::t
else if h=i then h::i::t
else h::bsort(i::t);
(*
Function name : bubbleSort
Function arguments :  	l - a list of elements
Return Type : a list of elements
Function working : if sorted list is equal to the list itself return the list else call again with list which 
we get after sorting it once.
*)
fun bubbleSort l = if (bsort l = l) then l
else bubbleSort (bsort l);
