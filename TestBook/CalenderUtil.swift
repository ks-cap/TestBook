//
//  CalenderUtil.swift
//  DateFunctions
//
//  Created by 佐藤 賢 on 2019/08/14.
//  Copyright © 2019 佐藤 賢. All rights reserved.
//

import Foundation

protocol DateProtocol {
    func now() -> Date
}

class DateDefault: DateProtocol {
    func now() -> Date {
        return Date()
    }
}

class CalenderUtil {
    let dateProtocol: DateProtocol
    
    init(dateProtocol: DateProtocol = DateDefault()) {
        self.dateProtocol = dateProtocol
    }
    
    func isHoliday() -> Bool {
        let now = dateProtocol.now()
        
        let calender = Calendar.current
        let weekday = calender.component(.weekday, from: now)
        
        return weekday == 1 || weekday == 7
    }
}
