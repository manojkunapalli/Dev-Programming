func verifyUnpaired(_ A: inout [Int]) -> Int {
    var i = 0
    var dict: [Int: Int] = [:]
    
    if A.count == 1 {
        return A[0]
    } 
    
    while(i < A.count) {
        if isItemExistsInDict(A[i], dict) {
            if i == 0 {
                print("i == 0")
                dict[A[i]]! += 1
                A.remove(at: i)                
            } else {
                dict[A[i]]! += 1
                A.remove(at: i)
                i -= 1
            }
        } else {
            dict[A[i]] = 1
            A.remove(at: i)
        }
    }    
    return traverseDictionaryForKeyWithValueOne(dict)
}

// Check the item exists in Dictionary  
func isItemExistsInDict(_ item: Int, _ dict: [Int: Int]) -> Bool {
    var result: Bool = false
    for (key, _) in dict {
        if key == item {
            result = true
            break
        }
    }
    return result    
}


// Traverse Dictionary and return key with value 1
func traverseDictionaryForKeyWithValueOne(_ dict: [Int: Int]) -> Int {
    var result = -10000
    for (key, value) in dict {
        if value == 1 {
            result = key
        }         
    }
    return result
}

var arr1 = [Int]()

// Add 9 and 3 repeatedly until the array size is 200
for _ in 0..<100 {
    arr1.append(9)
    arr1.append(3)
}

// Add the number 7 to make the array size 201
arr1.append(7)



print("hack: RESULT = \(verifyUnpaired(&arr1))")

