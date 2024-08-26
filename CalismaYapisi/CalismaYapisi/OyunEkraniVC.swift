//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Adem Han on 26.08.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true) //Bir önceki sayfaya dönüş
        navigationController?.popToRootViewController(animated: true) //ana sayfaya dönüş
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    

}
