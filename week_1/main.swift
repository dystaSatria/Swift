func ters_sayi(_ sayi: Int) -> Int {
    var result = 0
    var num = sayi
    
    while num != 0 {
        var digit = num % 10
        result = result * 10 + digit
        num /= 10
    }
    
    return result
}


print("Sayi girin :\n")
var sayi = Int(readLine()!)!
var sonuc = ters_sayi(sayi)
print("Ters sayi \(sayi), \(sonuc)")
    
