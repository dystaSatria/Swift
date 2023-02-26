
var numbers = [10, 20, 30, 40, 50]

// Ask the user for a value
print("Enter a number:")
var value = Int(readLine()!)!

// Check if the value is in the array
if numbers.contains(value) {
    print("\(value) is in the array.")
} else {
    print("\(value) is not in the array.")
}



