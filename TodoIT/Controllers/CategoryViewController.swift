//
//  CategoryViewController.swift
//  TodoIT
//
//  Created by Davide Soncin on 14/11/2019.
//  Copyright © 2019 Davide Soncin. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {
    
    var categoryArray = ["Spesa", "Compleanno", "Cucina"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categoryArray.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        cell.textLabel?.text = categoryArray[indexPath.row]
        
        return cell
        
    }

    //MARK: - Data Manipulation Methods

    
    //MARK: - Add New Categories
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New TodoIT Category", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Category", style: .default) { (action) in
            
            //What will happen once the user clicks tha Add Category button on our UIAlert
            self.categoryArray.append(textField.text!)
            
            self.tableView.reloadData()
            
        }
        
        alert.addTextField { (alerTextField) in
            alerTextField.placeholder = "Create new Category"
            textField = alerTextField
        }
        
        alert.addAction(action)
        
        present(alert,animated: true, completion: nil)
        
    }
        
    
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(categoryArray[indexPath.row])
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    

}
