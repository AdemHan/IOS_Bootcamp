import UIKit
//alıştırma 1 değişkenler
var ogrenciIsim = "Adem"
var ogrenciSoyisim = "Han"
var notOrtalama = 2.84

print("Öğrencinin Adı : \(ogrenciIsim), Öğrencinin Soyadı: \(ogrenciSoyisim), Öğrencinin not ortalaması: \(notOrtalama)")

//alıştırma 2 sabitler

let fiyat = 19.85
let kdvOrani = 20.0
var toplamFiyat: Double?
toplamFiyat = (fiyat * kdvOrani)/100 + fiyat

print(toplamFiyat!)

//alıştırma 2 tür dönüşümü ve sabitler
if let input = readLine(), let alinanSayi = Int(input){
    let donusturulmusSayi = String(alinanSayi)
    print("Dönüştürülmüş Sayı: \(donusturulmusSayi)")
}

var sayi1 = 10
var sayi2 = 5

if sayi1 > sayi2 {
    print("en büyük sayi: \(sayi1)")
}
else if sayi2 > sayi1 {
    print("en büyük sayi: \(sayi2)")
}
else {
    print("Sayılar eşit")
}

//alıştırma 3

var ogrenciNotu = 75

if ogrenciNotu >= 85 {
    print("Harf Notunuz : A")
}
else if ogrenciNotu >= 70 {
    print("Harf notunuz : B")
}
else if ogrenciNotu >= 50 {
    print("Harf notunuz : C")
}
else {
    print("Kaldınız")
}

//alıştırma

var ayNumarasi = 13

switch ayNumarasi {
    case 1:
        print("Ocak")
    case 2:
        print("Şubat")
    case 3:
        print("Mart")
    case 4:
        print("Nisan")
    case 5:
        print("Mayıs")
    case 6:
        print("Haziran")
    case 7:
        print("Temmuz")
    case 8:
        print("Ağustos")
    case 9:
        print("Eylül")
    case 10:
        print("Ekim")
    case 11:
        print("Kasım")
    case 12:
        print("Aralık")
    default: print("Geçersiz Numara Girdiniz")
}

//alıştırma 4

for x in 1...100 {
    print("Sayı: \(x)")
}

// alıştırma 4.1

var faktoriyelSayisi = 5
var sayac = 1
var sonucSayi = 1

while sayac <= faktoriyelSayisi {
    sonucSayi = sayac * sonucSayi
    sayac += 1
    print("Anlık sayı : \(sonucSayi)")
}
print("Sonuc Sayi: \(sonucSayi)")
