var swaps = 0
func bubbleSort(_ array: [Int]){
    var arr = array
    
    for i in 0..<arr.count where i + 1 < arr.count{
        let term =  arr[i]
        if arr[i] > arr[i + 1]{
            arr[i] = arr[i + 1]
            arr[i + 1] = term
            swaps += 1
        }else {
            continue
        }
    }
    if arr == arr.sorted(){
        print("Array is sorted in \(swaps) swaps.")
        print("First Element: \(arr.first!)")
        print("Last Element: \(arr.last!)")
    }else{
        bubbleSort(arr)
    }
}
}
