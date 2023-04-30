//
//  ViewController.swift
//  savingData
//
//  Created by Reza Dysta SATRIA on 30.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var birthLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedName = UserDefaults.standard.object(forKey: "name")
        
        let savedBirth = UserDefaults.standard.object(forKey: "birthday")
        // Do any additional setup after loading the view.
        if let newName = savedName as? String
        {
            nameLabel.text = newName
        }
        
        if let newBirth = savedBirth as? String
        {
            birthLabel.text = newBirth
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        
        UserDefaults.standard.set(birthText.text!, forKey: "birthday")
        
        nameLabel.text = "Your Name: \(nameText.text!)"
        
        birthLabel.text = "Your Birthday: \(birthText.text!)"
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
    }
}

