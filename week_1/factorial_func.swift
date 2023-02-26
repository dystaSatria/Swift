//This is factorial function with while and for (input from user)

func factorial_for(_ x: Int) -> Int {
    var sonuc_for = 1
    for i in 1...x {
        sonuc_for *= i
    }
    return sonuc_for
}

func factorial_while(_ y: Int) -> Int {
    var sonuc_while = 1
    var i = 1
    while i <= y {
        sonuc_while *= i
        i += 1
    }
    return sonuc_while
}
print("for ile faktöriyel fonksiyonu için sayi girin :\n")
var sayi_for = Int(readLine()!)!
var sonuc_for = factorial_for(sayi_for) // returns 120
print("Sonucu for ise  \(sonuc_for)\n")

print("while ile faktöriyel fonksiyonu için sayi girin :\n")
var sayi_while = Int(readLine()!)!
var sonuc_while = factorial_while(sayi_while) // returns 120
print("Sonucu while ise \(sonuc_while)\n")


