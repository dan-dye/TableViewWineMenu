//
//  WineViewController.swift
//  TableViewWineMenu
//
//  Created by Daniel Dye on 3/2/25.
//

import UIKit

class WineViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var selectedWine: Wine?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set labels to selected wine passed from view controller
        nameLabel.text = selectedWine!.getName()
        yearLabel.text = selectedWine!.getYear()
        typeLabel.text = selectedWine!.getType()
        regionLabel.text = selectedWine!.getRegion()
        priceLabel.text = "\(selectedWine!.getGlassPrice()) / \(selectedWine!.getBottlePrice())"
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
