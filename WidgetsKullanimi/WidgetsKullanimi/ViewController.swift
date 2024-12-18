//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Adem Han on 13.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
    }
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : ON")
        }else {
            print("Switch : OFF")
        }
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        let secilenIndex = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndex)!
        print("secilenKategori : \(secilenKategori)")
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch : \(mSwitch.isOn)")
        let secilenIndex = segmentedControl.selectedSegmentIndex
        let secilenKategori = segmentedControl.titleForSegment(at: secilenIndex)!
        print("Segmented Kontrol : \(secilenKategori)")
    }
    
}

