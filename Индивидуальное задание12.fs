let rec read_list = function
    0 -> []
    | n -> System.Convert.ToInt32(System.Console.ReadLine())::read_list(n-1)

let rec freq_elem elem count = function
    h::t when h = elem -> freq_elem elem (count+1) t
    | _::t -> freq_elem elem count t
    | _ -> count

let rec new_list list1 list2 list_res = function
    h::(t:int list) when ((freq_elem h 0 (list1) = 1) && (freq_elem h 0 list2) = 0 && (freq_elem h 0 list_res) = 0) -> new_list list1 list2 (h::list_res) t
    | _::t -> new_list list1 list2 list_res t
    | _ -> list_res

let rec write_list = function
    h::t -> System.Console.Write(h.ToString() + "  ")
            write_list t
    | [] -> System.Console.ReadKey()
            0

let result list1 list2 list3 = System.Console.Write("Результирующий список: ") 
                               new_list list2 list1 (new_list list1 list2 list3 list1) list2

[<EntryPoint>]
let main argv = 
    System.Console.Write("Введите размер списка 1: ")
    let size1 = System.Convert.ToInt32(System.Console.ReadLine())
    System.Console.Write("Введите размер списка 2: ")
    let size2 = System.Convert.ToInt32(System.Console.ReadLine())
    System.Console.WriteLine("Введите списки:")
    write_list(result (read_list size1) (read_list size2) [])