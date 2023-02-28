//All Fonksiyons
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

func ters_sayi(_ sayi: Int) -> Int {
    var result = 0
    var num = sayi
    
    while num != 0 {
        let hane = num % 10
        result = result * 10 + hane
        num /= 10
    }
    
    return result
}

func VKIHesaplama(boy: Double, kilo: Double) -> Double {
    return kilo / (boy * boy)
}



//main 
print("\t\t\tUygulama Odevi 1. Hafta\n")
print("1. For ve while ile faktöriyel fonksiyonu")
print("2. Ters sayi fonksiyonu")
print("3. Dizide eleman bulmasi")
print("4. 3 sayisidan En buyuk ve en kucugu bulmasi")
print("5. Meyvelerin kalorisi bulmasi")
print("6. VKI Hesaplama")
print("Secenegin numarasi giriniz:\n")

var secenek = Int(readLine()!)!

switch secenek {
  case 1:
    print("for ile faktöriyel fonksiyonu için sayi girin :\n")
    let sayi_for = Int(readLine()!)!
    let sonuc_for = factorial_for(sayi_for) // returns 120
    print("Sonucu for ise  \(sonuc_for)\n")

    print("while ile faktöriyel fonksiyonu için sayi girin :\n")
    let sayi_while = Int(readLine()!)!
    let sonuc_while = factorial_while(sayi_while) // returns 120
    print("Sonucu while ise \(sonuc_while)\n")
	    
  case 2:
    print("Sayi girin :\n")
    let sayi = Int(readLine()!)!
    let sonuc = ters_sayi(sayi)
    print("Ters sayi \(sayi), \(sonuc)")
	    
  case 3:
    let elemanlar = [11, 19, 30, 10, 22]

    print("Sayi Girin:\n")  
    let tahmin = Int(readLine()!)!


    if elemanlar.contains(tahmin) {
    print("\(tahmin) dizide var.")
    } else {
    print("\(tahmin) dizide yok.")
    }

	    
  case 4:
  
    print("3 adet sayi girin : \n")
    let sayi1 = Int(readLine()!)!
    let sayi2 = Int(readLine()!)!
    let sayi3 = Int(readLine()!)!


    var enBuyuk = sayi1
    if sayi2 > enBuyuk {
    enBuyuk = sayi2
    }
    if sayi3 > enBuyuk {
    enBuyuk = sayi3
    }
    print("\(enBuyuk),en buyuk sayisidir.")


    var enKucuk = sayi1
    if sayi2 < enKucuk {
    enKucuk = sayi2
    }
        if sayi3 < enKucuk {
    enKucuk = sayi3
    }
    print("\(enKucuk),en kucuk sayisidir.")

	    
  case 5:
    let meyveler = ["armut": 57, 
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
    let meyve = readLine()!.lowercased()


    if let calorie = meyveler[meyve] {
    print("\(meyve), \(calorie) kcal var.")
    } else {
    print("Bunu yok")
    }

    case 6:
    print("Boyun giriniz (metre): ")
    let boy = Double(readLine()!)!

    print("Kilonuz giriniz(kilogram): ")
    let kilo = Double(readLine()!)!

    let vki = VKIHesaplama(boy: boy, kilo: kilo)

    var sonuc = ""

    if vki < 18.5 {
    sonuc = "Ideal kilonun altinda"
    } else if vki > 18.5 && vki < 25 {
    sonuc = "İdeal kiloda"
    } else if vki > 25 && vki < 30 {
    sonuc = "İdeal kilonun üstünde"
    }
    else if vki > 30 && vki < 40 {
    sonuc = "İdeal kilonun çok üstünde (obez)"
    }
    else {
    sonuc = "İdeal kilonun çok üstünde (morbid obez)"
    }

    print("Sizin VKI degeriniz : \(vki)")
    print("ve \(sonuc)")
    
  default:
    print("Error.You just can select from 1 to 6 ")
    }
