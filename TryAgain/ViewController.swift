//
//  ViewController.swift
//  TryAgain
//
//  Created by Samantha Cortopassi on 12/28/18.
//  Copyright © 2018 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var YourName: UITextField!
    
    @IBOutlet weak var Feedback: UITableView!
    
    let todoList = List()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Feedback.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        Feedback.dataSource = todoList
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Button(_ sender: UIButton) {
        guard let todo = YourName.text else {
            return
        }
        todoList.add(todo)
        Feedback.reloadData()
        }
    }
    


