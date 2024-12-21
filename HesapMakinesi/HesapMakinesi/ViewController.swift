//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Adem Han on 19.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sonucEkrani: UILabel!
    
    private var mevcutSayi: String = ""       // Ekrandaki mevcut sayı
        private var oncekiSayi: String = ""       // Önceki sayı (işlem yapılacak sayı)
        private var secilenIslem: String?         // Seçilen işlem türü (+, -, ×, ÷)
        private var sayiGiriliyorMu: Bool = false // Sayı girişinin devam edip etmediğini kontrol eder
        
    
    @IBAction func buttonTapped(_ gonderen: UIButton) {
        guard let baslik = gonderen.titleLabel?.text else { return }
               
               switch baslik {
               case "0"..."9": // Sayı butonlarına basıldı
                   sayiGirisYap(sayi: baslik)
               case "+", "-", "×", "÷": // İşlem butonlarına basıldı
                   islemSec(islem: baslik)
               case "=": // Sonucu hesapla
                   sonucuHesapla()
               case "C": // Hesap makinesini sıfırla
                   sifirla()
               default:
                   break
               }
    }
    
    private func sayiGirisYap(sayi: String) {
            if sayiGiriliyorMu {
                mevcutSayi += sayi // Sayıları birleştir
            } else {
                mevcutSayi = sayi  // Yeni sayı başlat
                sayiGiriliyorMu = true
            }
            sonucEkrani.text = mevcutSayi // Sonuç ekranına yaz
        }
        
        private func islemSec(islem: String) {
            if !mevcutSayi.isEmpty {
                oncekiSayi = mevcutSayi // Şu anki değeri önceki değere aktar
                mevcutSayi = ""         // Yeni sayı girişi için sıfırla
                sayiGiriliyorMu = false
                secilenIslem = islem    // İşlemi kaydet
            }
        }
        
        private func sonucuHesapla() {
            guard let islem = secilenIslem,
                  let ilkSayi = Double(oncekiSayi),
                  let ikinciSayi = Double(mevcutSayi) else { return }
            
            var sonuc: Double = 0
            
            switch islem {
            case "+":
                sonuc = ilkSayi + ikinciSayi
            case "-":
                sonuc = ilkSayi - ikinciSayi
            case "×":
                sonuc = ilkSayi * ikinciSayi
            case "÷":
                if ikinciSayi != 0 {
                    sonuc = ilkSayi / ikinciSayi
                } else {
                    sonucEkrani.text = "Hata" // Sıfıra bölme hatası
                    return
                }
            default:
                break
            }
            
            // Sonucu formatla: Tam sayıysa ondalık kısmını gösterme
            if sonuc.truncatingRemainder(dividingBy: 1) == 0 {
                sonucEkrani.text = String(format: "%.0f", sonuc) // Tam sayı formatı
            } else {
                sonucEkrani.text = String(format: "%.2f", sonuc) // Ondalık formatı
            }
            
            mevcutSayi = "\(sonuc)" // Sonuç, yeni mevcut sayı olur
            sayiGiriliyorMu = false
            secilenIslem = nil
        }
        
        private func sifirla() {
            mevcutSayi = ""
            oncekiSayi = ""
            secilenIslem = nil
            sayiGiriliyorMu = false
            sonucEkrani.text = "0" // Ekranı sıfırla
        }
}

