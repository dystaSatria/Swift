//
//  SecondViewController.swift
//  ekranArasi
//
//  Created by Reza Dysta SATRIA on 30.04.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var ikinciEkran: UILabel!
    
    var benimAdim = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ikinciEkran.text = "İsminiz : \(benimAdim)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
