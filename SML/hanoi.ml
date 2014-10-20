(* Question 3 *)
(*
Function name : towerofhanoi
Function arguments : 	n - number of disks
						peg1 - symbol for source peg preferably a string 
						peg2 - symbol for destination peg preferably a string 
						peg3 - symbol for helper peg preferably a string 
Return Type : List of tuples (a,b) representing movement of a disk from a to b.
Function working : When n is 0, empty list is returned since number of disk is zero.
Otherwise problem is solved for n-1 disks transfering from peg1 to peg3 using peg2 as helper 
function, which is concatinated with step involving movment of disk from peg 1 to peg 3 and 
solution to n-1 disks transfering from peg3 to peg2 using peg1 as helper function.
*)
fun towerofhanoi (n,peg1,peg2,peg3) = if n=0 then []
else towerofhanoi (n-1,peg1,peg3,peg2) @ (peg1,peg2)::towerofhanoi (n-1,peg3,peg2,peg1);
