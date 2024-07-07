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


