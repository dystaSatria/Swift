func BMIHesaplama(boy: Double, kilo: Double) -> Double {
    return kilo / (boy * boy)
}

print("Boyun giriniz (metre): ")
let boy = Double(readLine()!)!

print("Kilonuz giriniz(kilogram): ")
let kilo = Double(readLine()!)!

let bmi = BMIHesaplama(boy: boy, kilo: kilo)

var sonuc = ""

if bmi < 18.5 {
    sonuc = "Ideal kilonun altinda"
} else if bmi > 18.5 && bmi < 25 {
    sonuc = "İdeal kiloda"
} else if bmi > 25 && bmi < 30 {
    sonuc = "İdeal kilonun üstünde"
}
else if bmi > 30 && bmi < 40 {
    sonuc = "İdeal kilonun çok üstünde (obez)"
}
else {
    sonuc = "İdeal kilonun çok üstünde (morbid obez)"
}

print("Senin BMI : \(bmi)")
print("ve \(sonuc)")