// Time Complexity O(N**2)
func checkUnpaired(_ A: inout [Int]) -> Int {
    let i = 0
    var j = 1

    while(j < A.count) {
        if A[i] != A[j] {
            j += 1
        } else if A[i] == A[j] {
            A.remove(at: i)
            j -= 1
            A.remove(at: j)
            j = 1
        }
    }
    
    return A[0]
}
