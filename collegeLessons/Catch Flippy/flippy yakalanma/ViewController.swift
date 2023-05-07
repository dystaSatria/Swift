//
//  ViewController.swift
//  flippy yakalanma
//
//  Created by Reza Dysta SATRIA on 6.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sureEtiketi: UILabel!
    
    @IBOutlet weak var flippy9: UIImageView!
    @IBOutlet weak var flippy8: UIImageView!
    @IBOutlet weak var flippy7: UIImageView!
    @IBOutlet weak var flippy6: UIImageView!
    @IBOutlet weak var flippy5: UIImageView!
    @IBOutlet weak var flippy4: UIImageView!
    @IBOutlet weak var flippy3: UIImageView!
    @IBOutlet weak var flippy2: UIImageView!
    @IBOutlet weak var flippy1: UIImageView!
    @IBOutlet weak var highScoreEtiketi: UILabel!
    var skor = 0
    var sayac = 0
    var zamanlayici = Timer()
    var goruntuZamanlayici = Timer()
    var enYuksekSkor = 0
    var imageDizisi = [UIImageView] ()
    
    
    
    @IBOutlet weak var skorEtiketi: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jestAlgilayici1 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici2 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici3 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici4 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici5 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici6 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici7 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici8 = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        let jestAlgilayici9  = UITapGestureRecognizer(target: self, action: #selector(skorArttirma))
        
        flippy1.addGestureRecognizer(jestAlgilayici1)
        flippy2.addGestureRecognizer(jestAlgilayici2)
        flippy3.addGestureRecognizer(jestAlgilayici3)
        flippy4.addGestureRecognizer(jestAlgilayici4)
        flippy5.addGestureRecognizer(jestAlgilayici5)
        flippy6.addGestureRecognizer(jestAlgilayici6)
        flippy7.addGestureRecognizer(jestAlgilayici7)
        flippy8.addGestureRecognizer(jestAlgilayici8)
        flippy9.addGestureRecognizer(jestAlgilayici9)
        
        
        flippy1.isUserInteractionEnabled = true
        flippy2.isUserInteractionEnabled = true
        flippy3.isUserInteractionEnabled = true
        flippy4.isUserInteractionEnabled = true
        flippy5.isUserInteractionEnabled = true
        flippy6.isUserInteractionEnabled = true
        flippy7.isUserInteractionEnabled = true
        flippy8.isUserInteractionEnabled = true
        flippy9.isUserInteractionEnabled = true
        
        sayac = 30
        sureEtiketi.text = String(sayac)
        zamanlayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(geriyeSay), userInfo: nil, repeats: true)
        
        goruntuZamanlayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(goruntuSakla), userInfo: nil, repeats: true)
        
        imageDizisi = [flippy1,flippy2,flippy3,flippy4,flippy5,flippy6,flippy7,flippy8,flippy9]
    }
    
    
    
    @objc func skorArttirma(){
        skor = skor + 1
        skorEtiketi.text = "Score : \(skor)"
    }
    
    @objc func geriyeSay(){
        sayac = sayac - 1
        sureEtiketi.text = "Your Time : \(String(sayac))"
        
        if sayac == 0 || sayac < 0{ // Süre dolunca
            zamanlayici.invalidate()
            goruntuZamanlayici.invalidate()
            
            for image in imageDizisi{
                image.isHidden = true
            }
            
            if self.skor > self.enYuksekSkor{
                self.enYuksekSkor = self.skor
                highScoreEtiketi.text = "HighScore: \(self.enYuksekSkor)"
                
                UserDefaults.standard.set(self.enYuksekSkor, forKey: "enYuksekSkor")
            }
            
            
            let uyari = UIAlertController(title: "Times Up", message: "Play Again ?", preferredStyle: UIAlertController.Style.alert)
            let tamam = UIAlertAction(title: "Exit", style: UIAlertAction.Style.cancel)
            let tekrarOyna = UIAlertAction(title: "Play Again", style: UIAlertAction.Style.default){
                (UIAlertAction) in
                
                self.skor = 0
                self.skorEtiketi.text = "Score: \(self.skor)"
                
                self.sayac = 20
                self.sureEtiketi.text = "Your Time: \(String(self.sayac))"
                
                self.zamanlayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.geriyeSay), userInfo: nil, repeats: true)
                
                self.goruntuZamanlayici = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.goruntuSakla), userInfo: nil, repeats: true)
                
            }
            
            uyari.addAction(tamam)
            uyari.addAction(tekrarOyna)
            self.present(uyari, animated: true)
        }
    }
    
    
    @objc func goruntuSakla(){
        for image in imageDizisi{
            image.isHidden = true
        }
        
        let rastgele = Int(arc4random_uniform((UInt32(imageDizisi.count-1))))
        
        imageDizisi[rastgele].isHidden = false
    }
    
}
