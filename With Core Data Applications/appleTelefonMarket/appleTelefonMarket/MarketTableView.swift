//
//  MarketTableView.swift
//  appleTelefonMarket
//
//  Created by Reza Dysta SATRIA on 1.06.2023.
//

import UIKit
import CoreData



var marketList = [Telefon]()

class MarketTableView : UITableViewController {
    
    var firstLoad = true
    
    override func viewDidLoad() {
        if (firstLoad){
            
            firstLoad = false
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context : NSManagedObjectContext = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName:"Telefon")
            do {
                let results:NSArray = try context.fetch(request) as NSArray
                
                for result in results {
                    let market = result as! Telefon
                    marketList.append(market)
                }
            }
            catch
            {
                print("Fetch Error")
            }
            
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let marketCell = tableView.dequeueReusableCell(withIdentifier: "marketCellID", for : indexPath) as! MarketCell
        
        let thisMarket : Telefon!
        
        thisMarket = marketList[indexPath.row]
        
        
        marketCell.titleLabel.text = thisMarket.name
        marketCell.descLabel.text = thisMarket.price
        marketCell.colorLabel.text = thisMarket.color
        
        return marketCell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marketList.count
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
                let market = marketList[indexPath.row]
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
                
                context.delete(market)
                
                do {
                    try context.save()
                    marketList.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .fade)
                } catch {
                    print("Error deleting market: \(error)")
                }
            }
        
        
        
    }
    
}
