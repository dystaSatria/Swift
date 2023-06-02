//
//  ViewController.swift
//  appleTelefonMarket
//
//  Created by Reza Dysta SATRIA on 1.06.2023.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var colorText: UITextField!
    @IBOutlet weak var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveAction(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context : NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Telefon", in: context)
        let newTelefon = Telefon(entity: entity!, insertInto: context)
        newTelefon.id = marketList.count as NSNumber
        newTelefon.name = textField.text
        newTelefon.price = textField2.text
        newTelefon.color = colorText.text
       
        do {
            
            try context.save()
            marketList.append(newTelefon)
            navigationController?.popViewController(animated: true)
        }
        catch {
            
            print("Error")
        }
        
        
    }
    
}

