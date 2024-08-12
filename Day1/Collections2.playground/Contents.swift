import UIKit

//set
var meyveler = Set<String>()

//veri ekleme
meyveler.insert("Elma")
meyveler.insert("Muz")
meyveler.insert("Portakal")
print(meyveler)

for meyve in meyveler {
    print("Sonuc : \(meyve)")
}

for (indeks, meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Boş mu : \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Dictionary - Hashmap - Map
var iller = [Int:String]()

//veri ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

//veri okuma
print(iller[16]!)

//Veri Güncelleme
iller[16] = "Yeni Bursa"
iller[34] = "Yeni İstanbul"
print(iller)

for (anahtar, deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 34)
print(iller)
