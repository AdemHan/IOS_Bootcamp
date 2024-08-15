import UIKit
//if ile guard farkı
//if true ise çalışır, guard false ise çalışır
func kişiTanima1(ad: String) {
    if ad == "Adem" {
        print("Hoşgeldin Adem")
    }
    else {
        print("Tanınmayan Kişi")
    }
}

kişiTanima1(ad: "Adem")

//ilk önce ad ademe eşit değil mi diye bakıyor. Eğer eşit değilse içindeki else çalışıyor. Fakat ad Adem'e eşitse çalışmıyor. Alt satırdaki kod çalışıyor
func kisiTanima2(ad: String) {
    guard ad == "Adem" else{
        print("Tanınmayan kisi")
        return
    }
    print("Hoşgeldin Adem")
}

kisiTanima2(ad: "Ahmet")

//hata ayıklama
//1. Compile Error : Editör (derleme) hataları

//let x = 10
//x = 20

//2. Runtime Error : Exception : Çalışma sırasında oluşan hatalar

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1: Int, sayi2: Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1/sayi2
}

do{
    let sonuc = try bolme(sayi1: 16, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayı sıfıra bölünemez")
}

//hata yakalamanın başka bir yolu

let sonuc1 = try? bolme(sayi1: 10, sayi2: 0)

if let temp = sonuc1 {
    print(temp)
}else{
    print("Sayı sıfıra bölünemez")
}
