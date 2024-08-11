import UIKit

//array kullanımı

var numaralar = [10, 20, 30]
var meyveler = [String]()

//veri ekleme

meyveler.append("Elma") //0.
meyveler.append("Muz")  //1.
meyveler.append("Kiraz")//2.
print(meyveler)

//güncelleme

meyveler[0] = "Yeni elma"
print(meyveler)

//insert (veri ekleme fakat istediğimiz indexe ekleme yapar. Sonraki indexleri kaydırır.)

meyveler.insert("Portakal", at: 1)
print(meyveler)

//veri okuma

print(meyveler[2])
let m = meyveler[1]
print(m)

print("boyut : \(meyveler.count)") //eleman sayısı
print("boş kontrol : \(meyveler.isEmpty)") //boş mu?

for meyve in meyveler {
    print("Sonuc 1 : \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

//nesne tabanlı örnek

class Ogrenciler {
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no: Int, ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 693, ad: "Adem", sinif: "9B")
var o2 = Ogrenciler(no: 75, ad: "Alperen", sinif: "11C")
var o3 = Ogrenciler(no: 535, ad: "Halit", sinif: "12D")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No : \(o.no!) , İsim : \(o.ad!) , Sınıf : \(o.sinif!) ")
}

//filtreleme

var f1 = ogrencilerListesi.filter({$0.no! > 100 && $0.no! < 600})
print("Filtreleme 1")
for o in f1 {
    print("No : \(o.no!) , İsim : \(o.ad!) , Sınıf : \(o.sinif!) ")
}

var f2 = ogrencilerListesi.filter({$0.ad!.contains("A")})
print("Filteleme 2")
for o in f2 {
    print("No : \(o.no!) , İsim : \(o.ad!) , Sınıf : \(o.sinif!) ")
}

//sıralama

var s1 = ogrencilerListesi.sorted(by:{ $0.no! > $1.no!})
print("Sayısalda büyükten küçüğe")
for o in s1 {
    print("No : \(o.no!) , İsim : \(o.ad!) , Sınıf : \(o.sinif!) ")
}

var s2 = ogrencilerListesi.sorted(by:{ $0.no! < $1.no!})
print("Sayısalda küçükten büyüğe")
for o in s2 {
    print("No : \(o.no!) , İsim : \(o.ad!) , Sınıf : \(o.sinif!) ")
}

var s3 = ogrencilerListesi.sorted(by:{ $0.ad! < $1.ad!})
print("Metinselde küçükten büyüğe")
for o in s3 {
    print("No : \(o.no!) , İsim : \(o.ad!) , Sınıf : \(o.sinif!) ")
}

var s4 = ogrencilerListesi.sorted(by:{ $0.ad! > $1.ad!})
print("Metinselde büyükten küçüğe")
for o in s4 {
    print("No : \(o.no!) , İsim : \(o.ad!) , Sınıf : \(o.sinif!) ")
}

