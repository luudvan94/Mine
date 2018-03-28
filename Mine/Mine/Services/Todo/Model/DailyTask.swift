//
//  DailyTask.swift
//  Mine
//
//  Created by Van Luu on 3/28/18.
//  Copyright © 2018 Luu Dinh Van. All rights reserved.
//

import Foundation
import RealmSwift

class DailyTask: Object {
  @objc dynamic var title         = ""
  @objc dynamic var detail        = ""
  @objc dynamic var isNotifiable  = false
  @objc dynamic var minsAtleast   = 0
  @objc dynamic var daysAWeek     = 0
}

class DailyTaskRecord: Object {
  @objc dynamic var comment       = ""
  @objc dynamic var time          = Date()
  @objc dynamic var timeDoing     = 0
  @objc dynamic var isDone        = false
}
