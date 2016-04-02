//
//  ViewController.swift
//  toDoListHSE
//
//  Created by Roman Ustiantcev on 02/04/16.
//  Copyright © 2016 Roman Ustiantcev. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate {
    
    // outlets
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    // var and let
    
    let toDoList = ToDoList()
    
    
    // hide keyboard with tap
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func insertItem(sender: AnyObject){
    
        // dont do anything yet :)
        print("Button!")
        
        guard let text = textField.text else {
            return
        }
        
        toDoList.addItem(text)
        tableView.reloadData()
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = toDoList
        textField.delegate = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // hidding keyboard with return
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

}

