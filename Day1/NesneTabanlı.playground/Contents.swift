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
    var x = 10
    
    func metod() {
        print("Metod Çalıştı")
    }
}

let a = ASinifi()

print(a.x)

print(ASinifi().x)  //Sanal nesne - virtual object - isimsiz nesne

ASinifi().metod()

