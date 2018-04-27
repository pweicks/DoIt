//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Parker Weicks on 4/26/18.
//  Copyright © 2018 Parker Weicks. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func addTapped(_ sender: AnyObject) {
        //Create a Task form the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop back
        
        navigationController!.popViewController(animated: true)
    }

}
