//
//  ViewController.swift
//  ekranArasi
//
//  Created by Reza Dysta SATRIA on 30.04.2023.
//

import UIKit

class ViewController: UIViewController {

    
    var kullanıcıİsmi = ""
    @IBOutlet weak var birinciEkran: UILabel!
    
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func nextButonu(_ sender: Any) {
        kullanıcıİsmi = nameText.text!
        performSegue(withIdentifier: "secondPage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondPage" {
            
            let gidelecekYer = segue.destination as! SecondViewController
            
            gidelecekYer.benimAdim = kullanıcıİsmi
        }
    }
    
}

