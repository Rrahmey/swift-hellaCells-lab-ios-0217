//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createNumbers()
    }
    
    var numbers = [String]()
    func createNumbers() {
        for i in 1...100 {
            let number = String(i)
            numbers.append(number)
        }
    }

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCells", for: indexPath)
        let number = numbers[indexPath.row]
        cell.textLabel?.text = number
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "NumberView" {return}
        if let destination = segue.destination as? HellaDetailViewControl,
            let indexPath = tableView.indexPathForSelectedRow {
            destination.number = numbers[indexPath.row]
        }
        
    }
    
}

