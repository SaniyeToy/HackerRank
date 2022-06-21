var arr: [Int] = []
func gradingStudents(grades: [Int]) -> [Int] {
    
    for i in grades {
            let a = i % 10
            switch a {
            case let a where a < 5:
                let b = 5 - a
                chooseArray(i: i, a: a , b: b)
            case let a where a > 5:
                let b = 10 - a
                chooseArray(i: i, a: a , b: b)
                
            default: arr.append(i)
            }
    }
    print(arr)
    return arr
}

func chooseArray(i: Int , a: Int , b: Int ){
    if  i + b >= 40{
        if b < 3 {
            arr.append(i + b)
        } else{
            arr.append(i)
        }
    }else{
        arr.append(i)
    }
   
}
