//
//  TaskWorker.swift
//  Mine
//
//  Created by Van Luu on 3/28/18.
//  Copyright © 2018 Luu Dinh Van. All rights reserved.
//

import Foundation
import RealmSwift

struct TaskWorker {
  
  func withRealm(handler: (Realm) -> Void) -> Error? {
    do {
      let realm = try Realm()
      
      try realm.write {
        handler(realm)
      }
      //done
      return nil
      
    } catch(let err) {
      // error
      return err
    }
  }
  
  func add(task: Object, completionHandler: (Error?) -> Void) {
    let err: Error? = withRealm { realm in
      realm.add(task)
    }
    
    completionHandler(err)
  }
  
  func delete(task: Object, completionHandler: (Error?) -> Void) {
    let err: Error? = withRealm { realm in
      realm.delete(task)
    }
    
    completionHandler(err)
  }
}
