
import Foundation
import RealmSwift

class TodoTask: Object {
  @objc dynamic var title         = ""
  @objc dynamic var detail        = ""
  @objc dynamic var time          = Date()
  @objc dynamic var isNotifiable  = false
  @objc dynamic var isPrivate     = true
}



