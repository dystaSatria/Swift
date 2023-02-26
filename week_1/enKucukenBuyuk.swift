// Ask the user for three numbers
print("Enter three numbers:")
var num1 = Int(readLine()!)!
var num2 = Int(readLine()!)!
var num3 = Int(readLine()!)!

// Find the largest number
var largest = num1
if num2 > largest {
    largest = num2
}
if num3 > largest {
    largest = num3
}
print("The largest number is \(largest)")

// Find the lowest number
var lowest = num1
if num2 < lowest {
    lowest = num2
}
if num3 < lowest {
    lowest = num3
}
print("The lowest number is \(lowest)")
