//
//  TorimaCopy&Paste.swift
//  ToDoWorkShop
//
//  Created by Aoki Riku on 2018/12/21.
//  Copyright © 2018 Aoki Riku. All rights reserved.
//

import Foundation

var toDoList:[String]?

//この下はコピペ
func saveData(todoList:[String]) {
    UserDefaults.standard.set(todoList, forKey: "toDoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "toDoList") as? [String] {
        return todo
    }
    else {
        return nil
    }
}
