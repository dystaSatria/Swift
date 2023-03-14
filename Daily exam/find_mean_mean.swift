// Define the array
let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

// Calculate the mean
let mean = Double(arr.reduce(0, +)) / Double(arr.count)

// Find the largest number
let largest = arr.max()!

// Find the smallest number
let smallest = arr.min()!

// Print the results
print("Mean:", mean)
print("Largest number:", largest)
print("Smallest number:", smallest)
