//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Adem Han on 25.04.2025.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexpath: IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexpath: indexPath!)
    }
    
}
