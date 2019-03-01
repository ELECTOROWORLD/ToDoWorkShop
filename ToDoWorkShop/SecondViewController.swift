//
//  SecondViewController.swift
//  ToDoWorkShop
//
//  Created by Aoki Riku on 2018/12/21.
//  Copyright © 2018 Aoki Riku. All rights reserved.
//
//とりあえずコピペしよう

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let todo = toDoList {
            return todo.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        if let todo = toDoList{
            cell.textLabel?.text = todo[indexPath.row]
        }
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        toDoTableView.delegate = self
        toDoTableView.dataSource = self
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        toDoTableView.reloadData()
    }
    
   
    
    //この下でStoryBoardとの接続の練習をしてみよう
    @IBOutlet weak var toDoTableView: UITableView!
    
   
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let completeButten: UITableViewRowAction = UITableViewRowAction(style: .normal, title: "完了") { (action, index) -> Void in
            toDoList?.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
        completeButten.backgroundColor = UIColor.blue
        
        return [completeButten]
        
    }
    
    
}




