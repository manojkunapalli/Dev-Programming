
var arr = [1, 2, 3, 4]//[3, 8, 9, 7, 6]
var k = 4

func makeCyclicMove(_ array: inout [Int], _ k: Int) {    
    var count = 0
    
    while(count < k) {
        var p = array.count - 1

        // reverse traverse
        while(p >= 0) {
            //reverse swap
            if(p-1 > -1) {
               var temp = array[p]
               array[p] = array[p-1]
               array[p-1] = temp 
            }
            p -= 1
        }
    count += 1        
    }
}

makeCyclicMove(&arr, k)

print(arr)
