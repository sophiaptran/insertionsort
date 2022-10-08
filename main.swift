// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["paper", "tree", "apple", "book", "sun"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var tempArray = unsortedStrings

var passCount = 0
var tempCount = 0
var totalCount = 0

func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp

    tempCount += 1
}

func sort (strings: inout[String]) {
    for i in 0..<strings.count {
        var swapIndex = i

        tempCount = 0

        while swapIndex > 0 {
            if strings[swapIndex] < strings[swapIndex - 1] {
                swap(strings: &strings, firstIndex: swapIndex, secondIndex: swapIndex - 1)
                
                swapIndex -= 1
                totalCount += 1
            }
            
            else  {
                break
            }
        }
        print("Pass: \(passCount), Swaps: \(tempCount)/\(totalCount), Array: \(strings)")

        passCount += 1
    }   
}
sort(strings: &tempArray)
