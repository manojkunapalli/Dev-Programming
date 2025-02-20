
// Find the Largest sqaure in ARRAY 
//var arr = [[1, 0, 1], [1, 1, 1] , [0, 1, 1]]

var arr = [[1, 1, 1, 0, 1], [1, 1, 0, 1, 0], [0, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1, 1, 1]]

func checkSquare(_ arr: [[Int]]) -> Int {    
    var i = 0
    var j = 0

    var squareSize = 0
    while(i < arr.count) {
        j = 0
        while(j < arr.count) {
            var count = 1
            
            print("i = \(i), j =\(j)")
            
            if((i - 1 > -1) && (j - 1 > -1)) {
                if arr[i-1][j-1] == 1 {
                    count += 1
                }
            } 
            
            if((i - 1 > -1)) {
                if arr[i-1][j] == 1 {
                    count += 1
                }
            }
            
            if((j - 1 > -1)) {
                if arr[i][j-1] == 1 {
                    count += 1
                }
            } 
            
            if ((i + 1 < arr.count) && (j + 1 < arr.count)) {
                if arr[i+1][j+1] == 1 {
                    count += 1
                }
            } 
            
            if(i+1 < arr.count) {
                if(arr[i+1][j]) == 1 {
                    count += 1
                }            
            }
            
            if(j+1 < arr.count) {
                if arr[i][j+1] == 1 {
                    count += 1
                }                        
            }
            
            if(i-1 > -1 && j+1 < arr.count) {
                if arr[i-1][j+1] == 1 {
                    count += 1
                }
            }
            
            if(j-1 > -1 && i+1 < arr.count) {
                if arr[i+1][j-1] == 1 {
                    count += 1
                }
            }
            

            if count > squareSize {
                squareSize = count
                count = 1
            }
            j += 1
        }
        i += 1
    }
    return squareSize
}

print("largest sqaure = \(checkSquare(arr))")
