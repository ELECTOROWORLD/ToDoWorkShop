//
//  FirstViewController.swift
//  ToDoWorkShop
//
//  Created by Aoki Riku on 2018/12/21.
//  Copyright © 2018 Aoki Riku. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    ///storyboardと紐づけよう
    @IBOutlet weak var taskText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func addTask(_ sender: Any) {
        
        //このボタンの処理を書いてみよう
        if taskText.text == "" {
            
            let title = "タスクが入力されていないよ！"
            let message = "タスクを追加してね！"
            let okText = "入力する"
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: okText, style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okayButton)
            
            present(alert, animated: true, completion: nil)
            
        } else {
          
            toDoList?.append(taskText.text!)
            taskText.text = ""
            taskText.placeholder = "タスクを入力しよう"
            
        }

        
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
}

