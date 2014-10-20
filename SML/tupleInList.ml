(* Question 4 *)
(*
Function name : sumMileage
Function arguments : A list of tuples of type (int * real)
Return Type : An integer.
Function working : This function finds sum of first element of all the tuples in the list. 
*)
fun sumMileage [] = 0
| sumMileage ((x,_)::t) = x + sumMileage (t);
(*
Function name : sumGasoline
Function arguments : A list of tuples of type (int * real)
Return Type : A real number.
Function working : This function finds sum of second element of all the tuples in the list. 
*)
fun sumGasoline [] = 0.0
| sumGasoline ((_,x)::t) = x + sumGasoline (t);
(*
Function name : milesPerGallon
Function arguments : A list of tuples of type (int * real)
Return Type : A tuple of type (int * real * real)
Function working : This function forms the tuple of 3 elements, first is sum of first element of all the tuples in the list,
second is sum of second element of all the tuples in the list and third is the first divided by the second.
*)
fun milesPerGallon L = ( sumMileage L, sumGasoline L , ( real(sumMileage L) / (sumGasoline L)));
