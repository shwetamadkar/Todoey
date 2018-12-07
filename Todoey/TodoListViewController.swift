//
//  ViewController.swift
//  Todoey
//
//  Created by Deepesh-Mac on 06/12/18.
//  Copyright © 2018 zivtrix. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destory Demogorgan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//MARK - Tableview Datasource Methods

    override func tableView(_tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
}

    override func tableView(_tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLable?.text = itemArray[indexPath.row]
        
        return cell
}

    //MARK - TableView Delegate Methods
    
    override func tableView(_tableView: UITableView, didSelectionRowAt indexPath:IndexPath) {
        // print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselecRow(at: indexPath, animared: true)
        
    }
    


}
