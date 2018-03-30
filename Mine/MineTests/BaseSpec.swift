//
//  BaseSpec.swift
//  MineTests
//
//  Created by Van Luu on 3/28/18.
//  Copyright © 2018 Luu Dinh Van. All rights reserved.
//

import RealmSwift
import Quick
import Nimble

class BaseSpec: QuickSpec {
  override func spec() {
    super.spec()
    
    beforeSuite {
      self.useTestDatabase()
    }
    
    beforeEach {
      self.clearDatabase()
    }
  }
}

extension BaseSpec {
  func useTestDatabase() {
    Realm.Configuration.defaultConfiguration.inMemoryIdentifier = self.name
  }
  
  func clearDatabase() {
    let realm = try! Realm()
    try! realm.write {
      realm.deleteAll()
    }
  }
}

