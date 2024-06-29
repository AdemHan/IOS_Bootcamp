import UIKit

//Karşılaştırma operatörleri
var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a == b)")
print("a != b : \(a != b)")
print("a > b : \(a == b)")
print("a >= b : \(a == b)")
print("a < b : \(a == b)")
print("a <= b : \(a == b)")

print("a > b || x > y : \(a > b && x > y)")
print("a > b && x > y : \(a > b || x > y)")

//if

var yas = 19
var isim = "Alperen"

if yas >= 18 {
    print("reşitsiniz")
}
else{
    print("reşit değilsiniz")
}

//

if isim == "Alperen"{
    print("Merhaba Alperen")
}
else if isim == "Adem" {
    print("Merhaba Adem")
}
else {
    print("Tanınmayan Kişi")
}

//

var ka = "admin"
var s = 12345

if ka == "admin" && s == 12345 {
    print("Hoşgeldiniz")
}
else {
    print("Yanlış giriş")
}

//

var sonuc = 11

if sonuc == 9 || sonuc == 11 {
    print("sonuç 9 veya 11 dir")
}
else{
    print("sonuç 9 veya 11 değildir")
}

// Switch

var gun = 9

switch gun {
    case 1: print("pazartesi")
    case 2: print("salı")
    case 3: print("çarşamba")
    case 4: print("perşembe")
    case 5: print("cuma")
    case 6: print("cumartesi")
    case 7: print("pazar")
    default: print("Böyle bir gün yok")
}

//DÖNGÜLER

//1,2,3
for x in 1...3 {
    print("Döngü 1: \(x)")
}

//10 ile 20 aralığı, 5 er artış
for a in stride(from: 10, through: 20, by: 5){
    print("Döngü 2: \(a)")
}

//20 ile 10 aralığı 5 er azalış
for b in stride(from: 20, through: 10, by: -5){
    print("Döngü 3: \(b)")
}

//WHILE
var sayac = 1
while sayac < 4 {
    print("Döngü 4: \(sayac)")
    sayac += 1 // sayac = sayac + 1
}

//BREAK VE CONTINUE

for i in 1...5 {
    if i == 3 {
        break  //buraya girerse döngüden çıkıyor
    }
    print("Döngü 6: \(i)")
}

for i in 1...5 {
    if i == 3 {
        continue    //bu döngüyü tamamla ve sonraki adıma geç
    }
    print("Döngü 6: \(i)")
}
