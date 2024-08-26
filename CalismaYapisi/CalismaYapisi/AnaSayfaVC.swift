//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Adem Han on 26.08.2024.
//

import UIKit

class AnaSayfaVC: UIViewController {

    @IBOutlet weak var labelAnaSayfa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnaSayfa.text = "Hoşgeldiniz"
    }

    @IBAction func buttonYap(_ sender: Any) {
        labelAnaSayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
    }
    
}

