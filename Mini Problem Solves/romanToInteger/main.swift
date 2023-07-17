class Solution {
    func romanToInt(_ w: String) -> Int {
        var symbols: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var num = 0
        var romanString = w
        
        romanString = romanString.replacingOccurrences(of: "IV", with: "IIII")
        romanString = romanString.replacingOccurrences(of: "IX", with: "VIIII")
        romanString = romanString.replacingOccurrences(of: "XL", with: "XXXX")
        romanString = romanString.replacingOccurrences(of: "XC", with: "LXXXX")
        romanString = romanString.replacingOccurrences(of: "CD", with: "CCCC")
        romanString = romanString.replacingOccurrences(of: "CM", with: "DCCCC")
        
        for char in romanString {
            if let value = symbols[char] {
                num += value
            }
        }
        
        return num
    }
}
