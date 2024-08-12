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

//Alıştırmalar

var alisverisListesi = ["Süt", "Yumurta"]
alisverisListesi.append("Kabartma Tozu")
alisverisListesi.append("Muz")
alisverisListesi.append("Çikolata")
alisverisListesi[0] = "Taze ekmek"
alisverisListesi.insert("Elma", at: 1)
var boyutu = alisverisListesi.count
var bosmu = alisverisListesi.isEmpty

for ürün in alisverisListesi {
    print("Alınacaklar : \(ürün)")
}

alisverisListesi.remove(at: 1)

for ürün in alisverisListesi {
    print("Güncel liste : \(ürün)")
}

alisverisListesi.removeAll()
print(alisverisListesi)

class Kitaplar {
    var numara: Int?
    var ad: String?
    var yazar: String?
    
    init(numara: Int, ad: String, yazar: String) {
        self.numara = numara
        self.ad = ad
        self.yazar = yazar
    }
}

var k1 = Kitaplar(numara: 2020131, ad: "Leyla ile Mecnun", yazar: "Burak Aksak")
var k2 = Kitaplar(numara: 1317202, ad: "Algoritmalara Giriş", yazar: "Thomas Cormen")
var k3 = Kitaplar(numara: 1453279, ad: "Ateşten Gömlek", yazar: "Halide Edip Adıvar")

var kitapListesi = [Kitaplar]()
kitapListesi.append(k1)
kitapListesi.append(k2)
kitapListesi.append(k3)

for i in kitapListesi {
    print("Kitap No: \(i.numara!), Kitap Adı: \(i.ad!), Kitap Yazar : \(i.yazar!)")
}

var filtre1 = kitapListesi.filter({$0.yazar!.contains("Halide Edip Adıvar")})
print("Filtre1")

for i in filtre1 {
    print("Kitap No: \(i.numara!), Kitap Adı: \(i.ad!), Kitap Yazar : \(i.yazar!)")
}

var sıralama1 = kitapListesi.sorted(by: {$0.numara! > $1.numara!})
print("Sıralama1")
for i in sıralama1 {
    print("Kitap No: \(i.numara!), Kitap Adı: \(i.ad!), Kitap Yazar : \(i.yazar!)")
}

var sıralama2 = kitapListesi.sorted(by: {$0.ad! < $1.ad!})
print("Sıralama2")
for i in sıralama2 {
    print("Kitap No: \(i.numara!), Kitap Adı: \(i.ad!), Kitap Yazar : \(i.yazar!)")
}
