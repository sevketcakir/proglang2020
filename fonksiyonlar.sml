fun fact (n:int):int=if n=0 then 1 else n*fact(n-1);

fun fact2 0 = 1 | fact2 n = n * fact2(n-1);

fun topla liste = if liste=[] then 0 else hd liste + topla(tl liste);

fun topla2 [] = 0 | topla2 (h::t) = h + topla2(t);

fun square [] = [] | square (h::t) = h*h :: square(t);

datatype direction= North | South | East | West;
(* Açıklama *)
fun heading North = 0.0 | 
    heading East = 90.0 | 
    heading South = 180.0 |
    heading West = 270.0;