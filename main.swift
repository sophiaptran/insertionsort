var words = [String]()
var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}

var tempArray = words

var passCount = 0
var tempCount = 0
var totalCount = 0

func swap(words: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = temp

    tempCount += 1
}

func sort (words: inout[String]) {
    for i in 0..<words.count {
        var swapIndex = i

        tempCount = 0

        while swapIndex > 0 {
            if words[swapIndex] < words[swapIndex - 1] {
                swap(words: &words, firstIndex: swapIndex, secondIndex: swapIndex - 1)
                
                swapIndex -= 1
                totalCount += 1
            }
            
            else  {
                break
            }
        }
        print("Pass: \(passCount), Swaps: \(tempCount)/\(totalCount), Array: \(words)")

        passCount += 1
    }   
}
sort(words: &tempArray)
