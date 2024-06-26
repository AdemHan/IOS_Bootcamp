import UIKit

var ad = "Adem"
var soyad = "Han"
var yas = 23
var boy = 1.84
var basHarf = "A"
var devamDurumu = true

print(ad)
print(soyad)
print(yas)
print(boy)
print(basHarf)
print(devamDurumu)

var urun_id : Int = 3416
var urun_adi : String = "Macbook Pro"
var urun_adet : Int = 100
var urun_fiyat : Int = 34999
var urun_tedarikci : String = "Apple"

print("Ürün id : \(urun_id)")
print("Ürün adı : \(urun_adi)")
print("Ürün adet : \(urun_adet)")
print("Ürün fiyat : \(urun_fiyat)")
print("Ürün tedarikçi : \(urun_tedarikci)")


//Tür dönüşümü
//Sayısaldan sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

//sayısaldan metine
var sonuc3 = String(i)
var sonuc4 = String(d)
print(sonuc3)
print(sonuc4)

//metinden sayısala
var yazi = "34"
if let sonuc5 = Int(yazi){
    print(sonuc5)
}

