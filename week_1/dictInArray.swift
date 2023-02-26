// Create a dictionary of fruits and their calorie values
var meyveler = ["armut": 57, 
            "avokado": 160, 
            "elma": 52, 
            "erik": 46, 
            "incir": 74,
            "mango": 60,
            "yabanmersini":57,
            "cilek": 32,
            "muz":89,
            "kivi":61
]


print("Meyve girin:\n")
var meyve = readLine()!.lowercased()

// Check if the fruit is in the dictionary
if var calorie = meyveler[meyve] {
    print("\(meyve), \(calorie) kcal var.")
} else {
    print("Bunu yok")
}
