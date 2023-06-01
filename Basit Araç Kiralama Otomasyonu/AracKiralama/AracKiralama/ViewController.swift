//
//  ViewController.swift
//  AracKiralama
//
//  Created by Reza Dysta SATRIA on 1.06.2023.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var surnameText: UITextField!
    
    
    @IBOutlet weak var dateBirthText: UITextField!
    
    
    @IBOutlet weak var SUV: UIImageView!
    
    @IBOutlet weak var hatchback: UIImageView!
    
    @IBOutlet weak var sedan: UIImageView!
    @IBOutlet weak var ucretiAraba: UILabel!
    
    @IBOutlet weak var zaman: UITextField!
    
    @IBOutlet weak var fiyatText: UILabel!
    
    var fiyati = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let Algilayici = UITapGestureRecognizer(target: self, action: #selector(hatchbackFiyati))
        
        hatchback.addGestureRecognizer(Algilayici)
        hatchback.isUserInteractionEnabled = true
        
        
        
        let Algilayici2 = UITapGestureRecognizer(target: self, action: #selector(SUVFiyati))
        
        SUV.addGestureRecognizer(Algilayici2)
        SUV.isUserInteractionEnabled = true
        
        
        let Algilayici3 = UITapGestureRecognizer(target: self, action: #selector(sedanFiyati))
        
        sedan.addGestureRecognizer(Algilayici3)
        sedan.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }
    
    @objc func hatchbackFiyati(){
        fiyati = fiyati * 500
        ucretiAraba.text = "Ucreti Araba : \(fiyati)"
        hatchback.isUserInteractionEnabled = false
        SUV.isUserInteractionEnabled = false
        sedan.isUserInteractionEnabled = false
    }
    @objc func SUVFiyati(){
        fiyati = fiyati * 1000
        ucretiAraba.text = "Ucreti Araba : \(fiyati)"
        hatchback.isUserInteractionEnabled = false
        SUV.isUserInteractionEnabled = false
        sedan.isUserInteractionEnabled = false
    }
    
    @objc func sedanFiyati(){
        fiyati = fiyati * 1500
        ucretiAraba.text = "Ucreti Araba : \(fiyati)"
        hatchback.isUserInteractionEnabled = false
        SUV.isUserInteractionEnabled = false
        sedan.isUserInteractionEnabled = false
    }
    
    
    @IBAction func TamamlaButonu(_ sender: Any) {
        
        guard let name = nameText.text, !name.isEmpty else {
                    // Tampilkan peringatan jika nama belum diisi
                    let alertController = UIAlertController(title: "Duyarı", message: "Adı yazmamışın", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    return
                }
        
        guard let surname =  surnameText.text, !surname.isEmpty else {
                    // Tampilkan peringatan jika nama belum diisi
                    let alertController = UIAlertController(title: "Duyarı", message: "Soyadı yazmamışın", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    return
                }
        
        guard let detBirth =  dateBirthText.text, !detBirth.isEmpty else {
                    
                    let alertController = UIAlertController(title: "Duyarı", message: "Doğum Tarihi yazmamışın", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    return
                }
        
        guard ucretiAraba.text != "Ucreti Araba :" else {
                    // Tampilkan peringatan jika nilai label tidak berubah
                    let alertController = UIAlertController(title: "Duyarı", message: "Araba secmemişin", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    return
                }
        
        guard fiyatText.text != "Odemeniz :" else {
                    
                    let alertController = UIAlertController(title: "Duyarı", message: "Gün ayarlamamışşın", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    return
                }

        
        let uyari = UIAlertController(title: "Bitti", message: "İşlemi oluşturuldu", preferredStyle: UIAlertController.Style.alert)
        
        self.present(uyari, animated: true)
    }
    
    
    
    
    
    @IBAction func hesaplaZamanla(_ sender: Any) {
        
        
        if let labelZaman = zaman.text, let number = Int(labelZaman) {
            
            let kiralamaUcreti = number * fiyati
            
            fiyatText.text = "Odemeniz : \(String(kiralamaUcreti))"
            
        }
        
    }
    
    
    
}
