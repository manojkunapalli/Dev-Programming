var arr = [9, 3, 9, 3, 9, 7, 9]

// with 2 while Loops

func getUnpairedElement(_ A: inout [Int]) -> Int {
    var i = 0
    while(i < A.count) {
        var j = i+1
        while(j < A.count) {
            if A[i] == A[j] {
                A.remove(at: i)
                j = j - 1
                A.remove(at: j)
                break
            } else {
                j += 1                
            }
        }

        if i == j {
            if(A.count == 3) {
                if(A[0] == A[1]) {
                    A.remove(at: 0)
                    A.remove(at: 0)
                } else if(A[0] == A[2]) {
                    A.remove(at: 0)
                    A.remove(at: 1)
                } else if(A[1] == A[2]) {
                    A.remove(at: 1)
                    A.remove(at: 1)                    
                }
            } else if(A.count == 2) {
                if(A[0] == A[1]) {
                    A.remove(at: 0)
                }
            } else {
                j = j+1
            }
            break
        }
    }
    return A[0]
}
