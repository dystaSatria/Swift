//
//  DetailViewController.swift
//  muzeInformation
//
//  Created by Reza Dysta SATRIA on 31.05.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var dlbl1: UILabel!
    
    @IBOutlet weak var dlbl2: UILabel!
    
    
    var strlbl1:String!
    var strlbl2:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        dlbl1.text = strlbl1
        dlbl2.text = strlbl2
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
