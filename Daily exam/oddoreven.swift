// Define the school number
let schoolNumber = 1234567890

// Define arrays for odd and even numbers
var oddNumber = [Int]()
var evenNumber = [Int]()

// Loop through each digit in the school number
var remainingNumber = schoolNumber
while remainingNumber > 0 {
    let digit = remainingNumber % 10
    
    // Check if the digit is odd or even
    if digit % 2 == 0 {
        evenNumber.append(digit)
    } else {
        oddNumber.append(digit)
    }
    
    remainingNumber /= 10
}

// Print the odd and even numbers
print("Odd numbers:", oddNumber)
print("Even numbers:", evenNumber)
