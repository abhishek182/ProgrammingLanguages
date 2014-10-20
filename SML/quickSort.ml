(* Question 6 *)
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
Function name : length
Function arguments :  	h::t - a list of elements
Return Type : an integer containing average of the list of elements.
Function working : It divided the sum of list elements by the length of list.
*)
fun average ([]) = 0
| average ([h]) = h 
| average (h::t) = sum (h::t) div length (h::t);
(*
Function name : findPivot
Function arguments :  	h::t - a list of elements
						avg - average value of the list.
						p - pivot value.
Return Type : an integer containing the pivot value.
Function working : If list is empty return 0, if list contains single element returns p. Otherwise if head of list is closer to avg 
then the current pivot value, set head of the list as pivot and recursively search in the tail else keep on searching 
closer value in the tail with current pivot value.
*)
fun findPivot ([], avg, p) = 0
| findPivot ([h], avg, p) = p
| findPivot (h::t,avg, p) = if abs(avg-h) <= abs (avg-p) then findPivot (t,avg,h)
else findPivot (t,avg,p);
(*
Function name : lessThanPivot
Function arguments :  	h::t - a list of elements
						pivot - an integer pivot value.
Return Type : a list of element which are less than the pivot value.
Function working : If list is empty return empty list. Otherwise check if head is less than or equal to pivot then append 
it to the final list and recursively search for more elements in the tail else just recursively search for more 
elements in the tail
*)
fun lessThanPivot ([], pivot) = []
| lessThanPivot (h::t,pivot) = if h<pivot then h::lessThanPivot(t,pivot)
else lessThanPivot(t,pivot);
(*
Function name : greaterThanPivot
Function arguments :  	h::t - a list of elements
						pivot - an integer pivot value.
Return Type : a list of element which are greater than the pivot value.
Function working : If list is empty return empty list. Otherwise check if head is greater than pivot then append 
it to the final list and recursively search for more elements in the tail else just recursively search for more 
elements in the tail
*)
fun greaterThanPivot ([], pivot) = []
| greaterThanPivot (h::t,pivot) = if h>pivot then h::greaterThanPivot(t,pivot)
else greaterThanPivot(t,pivot);
(*
Function name : quickSort
Function arguments :  	h::t - a list of elements
Return Type : a sorted list of elements.
Function working : If list is empty return empty list , if it contains only one element return that list. 
Otherwise find average value, pivot of the list, find the list of elements less than pivot and list of element 
greater than pivot. Call quicksort recursively on both the list and concate accordingly.
*)
fun quickSort [] = []
| quickSort [h] = [h]
| quickSort L = let
					val avg = average L
					val pivot = findPivot (L,avg,0)
					val left = lessThanPivot (L,pivot)
					val right = greaterThanPivot (L,pivot)
				in
					quickSort (left) @ pivot::quickSort (right)
				end;
