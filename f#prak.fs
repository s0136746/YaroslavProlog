﻿
let max2 x y =
    if x>y then x
    else y
let min2 x y =
    if x<y then x
    else y
let sum2 x y = x+y
let pr x y =x*y
let p3 f x y z = f (f x y) z


let p1_2 = 
    let a= System.Convert.ToInt32(System.Console.ReadLine())
    let b= System.Convert.ToInt32(System.Console.ReadLine())
    let c= System.Convert.ToInt32(System.Console.ReadLine())
    (p3 max2 a b c, p3 min2 a b c, p3 pr a b c)

[<EntryPoint>]
let main argv = 
    let Ans = p1_2
    System.Console.Write(Ans)
    let z = System.Console.ReadKey()        
    
    
