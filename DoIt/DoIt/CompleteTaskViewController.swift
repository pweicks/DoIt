//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Parker Weicks on 4/27/18.
//  Copyright © 2018 Parker Weicks. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task : Task? = nil
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
    }
    
    @IBAction func completeTapped(_ sender: AnyObject) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
}
