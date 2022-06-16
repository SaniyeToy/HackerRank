func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
       
       var a = A.sorted()
       var b = Array(B.sorted().reversed())
       var toplam = 0
       for i in 0...a.count - 1 {
          
           if a[i] + b[i] >= k {
               toplam += 1
           }
       }
       if toplam == a.count{
           print("YES")
           return "YES"
       }else {
           print("NO")
           return "NO"
       }
   }
