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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func kurCevirButonu(_ sender: Any) {
        
        let url = URL(string: "https://api.apilayer.com/fixer/latest?symbols=CHF%2CUSD%2CEUR%2CGBP%2CKWD%2CBGN%20&base=TRY&apikey=HfPoWZs0N2VjZO9GtrHtFuLTgE75GBin") //add URL
        
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
                                    self.CHFLabel.text = "CHF : \(chf)"
                                }
                                if let usd = rates["USD"] as? Double {
                                    self.USDLabel.text = "USD : \(usd)"
                                }
                                if let eur = rates["EUR"] as? Double {
                                    self.EURLabel.text = "EUR : \(eur)"
                                }
                                if let gbp = rates["GBP"] as? Double {
                                    self.GBPLabel.text = "GBP : \(gbp)"
                                }
                                if let kwd = rates["KWD"] as? Double {
                                    self.KWDLabel.text = "KWD : \(kwd)"
                                }
                                if let bgn = rates["BGN"] as? Double {
                                    self.BGNLabel.text = "BGN : \(bgn)"
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

