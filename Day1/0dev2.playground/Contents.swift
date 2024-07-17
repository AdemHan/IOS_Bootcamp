import UIKit

class Hesaplamalar{
    //1.görev
    func kmToMile (km:Double) ->Double {
        var mileDegeri = km * 0.621
        return mileDegeri
    }
    
    //2.görev
    func dikdortgenAlan (kısaKenar:Double, uzunKenar:Double){
        var alan = kısaKenar * uzunKenar
        print("Dikdörgen Alanı: \(alan)")
    }
    
    //3.görev
    func fakoriyel (sayi:Int) -> Int {
        var sonucDeger = 1
        
        for i in 1...sayi {
            sonucDeger = sonucDeger * i
        }
        return sonucDeger
    }
    
    //4.görev
    func harfSayacı (kelime:String){
        var sayac = 0
        for karakter in kelime {
            if karakter == "e" || karakter == "E" {
                sayac += 1
            }
        }
        print("Toplam bulunan harf sayısı: \(sayac)")
    }
    
    //5.görev
    func icAciHesaplama (kenarSayisi:Double) -> Double {
        var birAci:Double
        birAci = ((kenarSayisi - 2) * 180) / kenarSayisi
        return birAci
    }
    
    //6.görev
    func maasHesabi (calisilanGunSayisi:Int) -> Int{
        var toplamSaat = calisilanGunSayisi * 8
        var mesaiSaati:Int
        var mesaiUcreti = 80
        var toplamMesaiUcreti = 0
        var normalUcret = 40
        var toplamUcret = 0
        
        if toplamSaat > 150 {
            mesaiSaati = toplamSaat - 150
            toplamMesaiUcreti = mesaiSaati * mesaiUcreti
            normalUcret = 40 * 150
            toplamUcret = normalUcret + toplamMesaiUcreti
        }
        else{
            toplamUcret = toplamSaat * normalUcret
        }
    return toplamUcret
    }
    
    //7.görev
    func otoparkUcreti (gecirilenSaat:Int) -> Int {
        var toplamUcret = 0
        var saatlikUcret = 50
        var artıSaatUcreti = 10
        var artıSaat = gecirilenSaat - 1
        
        if gecirilenSaat > 1 {
            toplamUcret = (artıSaat * artıSaatUcreti) + saatlikUcret
        }
        else{
            toplamUcret = saatlikUcret
        }
            
        return toplamUcret
    }
    
    //ek 1
    func daireAlani (yariCap:Double) -> Double {
        var alan = 3.14 * yariCap * yariCap
        return alan
    }
    
    //ek1
    
    func basamakToplama(sayi: Int) -> Int {
        var toplam = 0
        var num = sayi
        
        while num > 0 {
            toplam += num % 10
            num /= 10
        }
        
        return toplam
    }
    
}

var o2 = Hesaplamalar()

var kacMil = o2.kmToMile(km: 15)
print("Sonuç Mil Mesafesi: \(kacMil) mil")

o2.dikdortgenAlan(kısaKenar: 6.20, uzunKenar: 3.20)

var faktoriyel = o2.fakoriyel(sayi: 3)
print("Girilen sayının faktoriyeli: \(faktoriyel)")

o2.harfSayacı(kelime:"Alperen")

var ucgenAcisi = o2.icAciHesaplama(kenarSayisi: 4)
print("Bir açısı \(ucgenAcisi) derecedir")

var maasim = o2.maasHesabi(calisilanGunSayisi: 18)
print("Toplam ücretim: \(maasim)")

var otoparkGiderim = o2.otoparkUcreti(gecirilenSaat: 3)
print("Toplam ücretim: \(otoparkGiderim)")

var daireAlani = o2.daireAlani(yariCap: 3)
print("Dairenin alanı: \(daireAlani)")

let sonuc = o2.basamakToplama(sayi: 15)
print("Giriğiniz sayının basamkları toplamı: \(sonuc).")
