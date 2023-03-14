// Define the number to be reversed
let number = 123456789

// Convert the number to a string and reverse it
let reversedString = String(String(number).reversed())

// Convert the reversed string back to an integer
let reversedNumber = Int(reversedString)!

// Print the reversed number
print("Reversed number:", reversedNumber)
