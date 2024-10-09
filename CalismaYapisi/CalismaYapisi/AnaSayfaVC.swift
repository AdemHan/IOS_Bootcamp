//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Adem Han on 26.08.2024.
//

import UIKit

class AnaSayfaVC: UIViewController {

    @IBOutlet weak var labelAnaSayfa: UILabel!      //yazının özellikleri buraya geldi
    //leading - Left - Start
    //Trailing - Right - And
    
    override func viewDidLoad() {   //Uygulama ilk açıldığında 1 kez çalışır
        super.viewDidLoad()
        labelAnaSayfa.text = "Hoşgeldiniz"      //yazının text özelliğini kullanıp atama yaptık
    }

    override func viewWillAppear(_ animated: Bool) {    //Sayfa her göründüğünde çalışır
        print("viewWillAppear çalıştı")
        //sayfa geri dönüldüğünde de çalışır
    }
    
    override func viewWillDisappear(_ animated: Bool) {     //Sayfa her görünmez olduğunda çalışır
        print("viewWillDisappear çalıştı")
    }
    
    @IBAction func buttonYap(_ sender: Any) {
        labelAnaSayfa.text = "Merhaba"          //Yazının texti butona basınca değişiyor
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 19, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)  //aktarılacak veri sender içine yazıldı.Bu etikete sahip olan geçiş tetiklenir
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {     //herhangi bir geçiş var mı onu dinler
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {    //etiket oyunEkraninaGecis olduğu için çalıştı
            print("Oyun ekranına geçiş çalıştı")
            
            if let veri = sender as? Kisiler {       //Gelen mesaj veri değişkenine aktarıldı ve string türünde seçildi
                let gidilecekVC = segue.destination as! OyunEkraniVC   //gidilecekVC sabiti oluşturuldu ve bu OyunEkranıVC klasına erişiyor
                gidilecekVC.kisi = veri    //veri gidilecekVC'nin mesaj değişkenine aktarıldı
            }
        }
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add seçildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save seçildi")
    }
    
    
}

