//
//  ViewController.swift
//  TableViewWineMenu
//
//  Created by Daniel Dye on 3/2/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let appLogic = AppLogic()
    //Currently selected wine on the table
    var selectedWine: Wine?
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    //Number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //Formats tableview cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = appLogic.getWine(indexPath.row).getName()
        content.secondaryText = appLogic.getWine(indexPath.row).getType()
        cell.contentConfiguration = content
        return cell
    }
    
    //On row selection, selects a cell in logic and performs segue to Wine details view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedWine  = appLogic.getWine(indexPath.row)
        performSegue(withIdentifier: "toWineView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toWineView") {
            if let destination = segue.destination as? WineViewController {
                destination.selectedWine = selectedWine
            }
        }
    }


}

