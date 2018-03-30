//
//  TodoSpec.swift
//  MineTests
//
//  Created by Van Luu on 3/28/18.
//  Copyright © 2018 Luu Dinh Van. All rights reserved.
//

import RealmSwift
import Quick
import Nimble

class TodoSpec: BaseSpec {
  
  override func spec() {
    super.spec()
    
    describe("CRUD Operation") {
      describe("Insert") {
        it("Save the object correctly") {
          let todoTask = TodoTask(title: "Todo1")
          
          try! todoTask.save()
          
          guard let addedTodoTask = try! TodoTask.lastObject() else {
            return
          }
          
          expect(addedTodoTask.title) == "Todo1"
          
        }
      }
      
      describe("Update") {
        it("Update the object correctly") {
          let todoTask = TodoTask(title: "Todo1")
          
          try! todoTask.save()
          
          guard let addedTodoTask = try! TodoTask.lastObject() else {
            return
          }
          
          try! addedTodoTask.update(title: "Todo1 Updated")
          guard let updatedTodoTask = try! TodoTask.lastObject() else {
            return
          }
          
          expect(updatedTodoTask.title) == "Todo1 Updated"
        }
      }
    }
  }
}
