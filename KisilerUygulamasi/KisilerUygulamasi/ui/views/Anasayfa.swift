//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Adem Han on 21.12.2024.
//

import UIKit

class Anasayfa: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self // searchBar'ın delegesini ayarla
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(Kisi_id: 1, Kisi_ad: "Alperen", Kisi_tel: "1111111")
        let k2 = Kisiler(Kisi_id: 2, Kisi_ad: "Emir", Kisi_tel: "2222222")
        let k3 = Kisiler(Kisi_id: 3, Kisi_ad: "Mehmet", Kisi_tel: "3333333")
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Anasayfaya dönüldü")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "toDetay" {
            if let kisi = sender as? Kisiler {
               let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
           }
        }
    }
}

// Extension sınıfın dışına taşındı
extension Anasayfa: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {    //textDidChange her bir şey yazıldığında sonuç veriyor
        print("Kişi Arama: \(searchText)")
    }
}

extension Anasayfa: UITableViewDelegate ,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {   //numberOfRowsInSection kaç sütun olacak
        
        return kisilerListesi.count     //listenin uzunluğu kadar olacak
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let kisi = kisilerListesi[indexPath.row]    //kisiler listesinin indexini sırasıyla alır ve kisiye atar
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucre
        
        hucre.labelKisiAd.text = kisi.Kisi_ad
        hucre.labelKisiTel.text = kisi.Kisi_tel
        
        return hucre
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") { contextualAction, view, bool in
            
            let kisi = self.kisilerListesi[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.Kisi_ad!) Silinsin mi?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){action in
                print("Kişi Sil : \(kisi.Kisi_id!)")
            }
            alert.addAction(evetAction)
            
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}
