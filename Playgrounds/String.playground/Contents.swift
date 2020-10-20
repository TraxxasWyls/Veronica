import UIKit




extension String {
    
    public func replacingOccurrences(with replacement: [String: String]) -> String {
        var processedData = self
        for element in replacement {
            processedData = processedData.replacingOccurrences(of: element.key, with: element.value)
        }
        return processedData
    }
}

var str = "Hello, YYZ and DUB"
var whith = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
let codes = [String](whith.keys)
let values = [String](whith.values)
str.replacingOccurrences(with: whith).replacingOccurrences(of: "", with: "")
