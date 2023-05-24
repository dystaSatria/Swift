//
//  ViewController.swift
//  dovizDonusturucu
//
//  Created by Reza Dysta SATRIA on 21.05.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var CHFLabel: UILabel!
    @IBOutlet weak var KWDLabel: UILabel!
    @IBOutlet weak var BGNLabel: UILabel!
    @IBOutlet weak var GBPLabel: UILabel!
    @IBOutlet weak var EURLabel: UILabel!
    @IBOutlet weak var USDLabel: UILabel!
    @IBOutlet weak var QARLabel: UILabel!
    
    @IBOutlet weak var KRWLabel: UILabel!
    @IBOutlet weak var JPYLabel: UILabel!
    @IBOutlet weak var PHPLabel: UILabel!
    
    @IBOutlet weak var liraConvert: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func kurCevirButonu(_ sender: Any) {
        
        
        let url = URL(string: "https://api.apilayer.com/fixer/latest?symbols=CHF%2CUSD%2CEUR%2CGBP%2CKWD%2CBGN%2CQAR%2CJPY%2CPHP%2CKRW&base=TRY&apikey=5d4Gu7t5eAlN1kPZ5N752CC5sCnSTNF7") //add URL
        
        let oturum = URLSession.shared
        
        let gorev = oturum.dataTask(with: url!) {(veri, yanit, hata) in
            if hata != nil {
                let uyari = UIAlertController(title: "Hata", message: hata?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let tamamTusu = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
                uyari.addAction(tamamTusu)
            } else {
                if veri != nil {
                    do {
                        let jsonSonuc = try JSONSerialization.jsonObject(with: veri!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,Any>
                        
                        DispatchQueue.main.async {
                            if let rates = jsonSonuc["rates"] as? [String:Any]{
                                if let chf = rates["CHF"] as? Double {
                                    let convertCHF = chf * 100
                                    self.CHFLabel.text = "CHF : \(convertCHF)"
                                }
                                if let usd = rates["USD"] as? Double {
                                    let convertUSD = usd * 100
                                    self.USDLabel.text = "USD : \(convertUSD)"
                                }
                                if let eur = rates["EUR"] as? Double {
                                    let convertEuro = eur * 100
                                    self.EURLabel.text = "EUR : \(convertEuro)"
                                }
                                
                                if let kwd = rates["KWD"] as? Double {
                                    let convertKWD = kwd * 100
                                    self.KWDLabel.text = "KWD : \(convertKWD)"
                                }
                                if let bgn = rates["BGN"] as? Double {
                                    let convertBGN = bgn * 100
                                    self.BGNLabel.text = "BGN : \(convertBGN)"
                                }
                                if let qar = rates["QAR"] as? Double {
                                    let convertQAR = qar * 100
                                    self.QARLabel.text = "QAR : \(convertQAR)"
                                }
                                
                                if let gbp = rates["GBP"] as? Double {
                                    let convertGBP = gbp * 100
                                    self.GBPLabel.text = "GBP : \(convertGBP)"
                                }
                                if let php = rates["PHP"] as? Double {
                                    let convertPHP = php * 100
                                    self.PHPLabel.text = "PHP : \(convertPHP)"
                                }
                                if let jpy = rates["JPY"] as? Double {
                                    let convertJPY = jpy * 100
                                    self.JPYLabel.text = "JPY : \(convertJPY)"
                                }
                                if let krw = rates["KRW"] as? Double {
                                    let convertKRW = krw * 100
                                    self.KRWLabel.text = "KRW : \(convertKRW)"
                                }
                            }
                        }
                    }
                    catch {
                        print("Hata")
                    }
                }
            }
        }
        gorev.resume()
    }
}

