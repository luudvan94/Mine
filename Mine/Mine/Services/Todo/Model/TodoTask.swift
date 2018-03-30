
import Foundation
import RealmSwift

class TodoTask: Object {
  @objc dynamic var title           = ""
  @objc dynamic var detail: String? = nil
  @objc dynamic var time            = Date()
  @objc dynamic var isNotifiable    = false
  @objc dynamic var isPrivate       = true
  
  convenience init(title: String) {
    self.init()
    
    self.title = title
  }
}

extension TodoTask {
  
  func save() throws {
    let realm = try Realm()
    
    try realm.write {
      realm.add(self)
    }
  }
  
  func delete() throws {
    let realm = try Realm()
    
    try realm.write {
      realm.delete(self)
    }
  }
  
  func update(title: String, detail: String? = nil, time: Date = Date(), isNotifiable: Bool = false, isPrivate: Bool = true) throws {
    let realm = try Realm()
    
    try realm.write {
      self.title = title
      self.detail = detail
      self.time = time
      self.isNotifiable = isNotifiable
      self.isPrivate = isPrivate
    }
  }
}

extension TodoTask {
  class func lastObject() throws -> TodoTask? {
    let realm = try Realm()
    
    return realm.objects(TodoTask.self).last
  }
}



