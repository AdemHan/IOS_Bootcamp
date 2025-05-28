//
//  ViewController.swift
//  MVVMKullanimi
//
//  Created by Adem Han on 1.05.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldSayi2: UITextField!
    @IBOutlet weak var textFieldSayi1: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text = viewModel.sonuc
    }

    @IBAction func buttonToplama(_ sender: Any) {
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            labelSonuc.text = viewModel.sonuc
        }
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            labelSonuc.text = viewModel.sonuc
        }
    }
    
}

