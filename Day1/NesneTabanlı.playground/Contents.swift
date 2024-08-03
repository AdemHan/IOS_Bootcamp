import UIKit

class Araba {
    var renk: String?
    var km: Int?
    var calisiyorMu: Bool?
    
    init(){
        print("boş init metodu çalıştı")
    }
    
    init(renk:String, km:Int, calisiyorMu:Bool){
        self.renk = renk //self: bulunduğu sınıfı temsil ediyor. Java ve kotlin'de this'e karşılık geliyor.
        self.km = km
        self.calisiyorMu = calisiyorMu //Shadowing: Gölgeleme
        print("dolu init metodu çalıştı")
    }
    
    func calistir(){//side effect : Classın içerinisindeki bir fonksiyon klasın değişkenininin değerini değiştiriyorsa buna side effect denir.
        
        calisiyorMu = true
        km = 5
    }
    
    func durdur(){
        calisiyorMu = false
        km = 0
    }
    
    func hizlan(kacKm:Int){
        km! += kacKm
    }
    
    func yavasla(kacKm:Int){
        km! -= kacKm
    }
    
    func bilgial(){
        print("---------------")
        print("Renk : \(renk!)")
        print("Km : \(km!)")
        print("Çalışıyor mu: \(calisiyorMu!)")
    }
}

//Nesne Olusturma
var bmw = Araba(renk: "Mavi", km: 20, calisiyorMu: true)
var sahin = Araba()

//Değer atama

//bmw.renk = "Kırmızı"
//bmw.km = 34
//bmw.calisiyorMu = true

sahin.renk = "Beyaz"
sahin.km = 345
sahin.calisiyorMu = true

//Değer Okuma
bmw.bilgial()
bmw.durdur()
bmw.bilgial()
bmw.calistir()
bmw.bilgial()
bmw.hizlan(kacKm: 80)
bmw.bilgial()
bmw.yavasla(kacKm: 20)
bmw.bilgial()

sahin.bilgial()
sahin.durdur()
sahin.bilgial()
sahin.calistir()
sahin.bilgial()
sahin.hizlan(kacKm: 25)
sahin.bilgial()
sahin.yavasla(kacKm: 10)
sahin.bilgial()

class Fonksiyonlar {
    
    //geri dönüş değeri olmayan (void)
    func selamla1(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    //geri dönüş değeri olan (return)
    func selamla2() ->String {
        let sonuc = "Merhaba Adem"
        return sonuc
    }
    
    //parametre girilen fonksiyon
    func selamla3(isim:String){
        let sonuc = ("Merhaba \(isim)")
        print(sonuc)
    }
    
    //hem parametre girilen hem de return olan fonksiyon
    func toplama (sayi1:Int, sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //overloading: Bir class içerisinde aynı isimde birden fazla fonksiyon oluşturmamıza yarar. Bunu yapmanın yolu parametrelerin farklı veri türlerinde olmasıdır
    func carpma (sayi1:Int, sayi2:Int) {
        print("Çarpma sonucu : \(sayi1 * sayi2)")
    }
    func carpma (sayi1:Double, sayi2:Double) {
        print("Çarpma sonucu : \(sayi1 * sayi2)")
    }
    
}

let f = Fonksiyonlar()
f.selamla1()

let gelensonuc = f.selamla2()
print("Gelen Sonuc: \(gelensonuc)")

//sadece return olan fonksiyon geri değer döndürür. Diğeri sadece fonksiyon içerisindeki işlemi yapar.

f.selamla3(isim: "Mahmut")

var gelenToplam = f.toplama(sayi1: 15, sayi2: 7)
print(gelenToplam)

f.carpma(sayi1: 5, sayi2: 7)

//statik değişkenler ve metodlar
class ASinifi {
    static var x = 10
    
    static func metod() {
        print("Metod Çalıştı")
    }
}

let a = ASinifi()

/* print(a.x)

print(ASinifi().x)  //Sanal nesne - virtual object - isimsiz nesne

ASinifi().metod() */

print(ASinifi.x)

ASinifi.metod()


//Enumeration

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut: KonserveBoyut, adet: Int) {
    switch boyut {
        case .kucuk: print("Fiyat: \(adet * 13) tl")
        case .orta: print("Fiyat: \(adet * 24) tl")
        case .buyuk: print("Fiyat: \(adet * 45) tl")
    }
}

ucretHesapla(boyut: .orta, adet: 2)

//Composition

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id: Int, kategori_ad: String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id: Int, yonetmen_ad: String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id: Int, film_ad: String, film_yil: Int, kategori: Kategoriler, yonetmen: Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1)

print("Film id : \(f1.film_id!)")
print("Film ad : \(f1.film_ad!)")
print("Film yıl : \(f1.film_yil!)")
print("Film kategori : \(f1.kategori!.kategori_ad!)")
print("Film yönetmen : \(f1.yonetmen!.yonetmen_ad!)")
