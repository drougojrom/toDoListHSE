//
//  ToDoList.swift
//  toDoListHSE
//
//  Created by Roman Ustiantcev on 02/04/16.
//  Copyright © 2016 Roman Ustiantcev. All rights reserved.
//

import UIKit
import CoreData

class ToDoList: NSObject {
    
    private var items: Array = [String]()
    
    func addItem(item: String) {
        items.append(item)
    }
    
}

extension ToDoList: UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
}