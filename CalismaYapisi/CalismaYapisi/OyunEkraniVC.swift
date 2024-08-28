//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Adem Han on 26.08.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler?       //kişiler clasından bir nesne oluşturuldu

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi{       //aktarılan mesaj m değişkenine iletildi
            print(" AD : \(k.ad!)")
            print(" YAŞ : \(k.yas!)")
            print(" BOY : \(k.boy!)")
            print(" BEKAR : \(k.bekar!)")
        }
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true) //Bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) //ana sayfaya dönüş
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    

}
