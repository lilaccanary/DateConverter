//
//  Convertor.swift
//  DateConverter
//
//  Created by Olka on 27.02.2021.
//

import Foundation

class Convertor {
    var day: Int
    var month: Int
    var year: Int
    let monthName = ["января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"]
    
   
    func convertDate() -> String {
        var yearValue = ""
        if day == 0 || month == 0 || year == 0 || day > 31 || month > 12 {
            return "Введите корректные данные"
        } else {
            let decade = day % 10 == 0 || day == 31 ? day / 10 : day / 10 + 1
            let monthValue = monthName[month - 1]
            if year % 4 != 0 || year % 100 == 0 && year % 400 != 0 {
                yearValue = " невисокосного года"
            } else {
                yearValue = " високосного года"
            }
            return String(decade) + " декада " + String(monthValue) + yearValue
        }
    }
    
    
    init(_ string: String) {
        let fullNameArr = string.split(separator: ".")
        if Int(fullNameArr[0]) != nil {
            day = Int(fullNameArr[0])!
        } else {
            day = 0
        }
        if Int(fullNameArr[1]) != nil {
            month = Int(fullNameArr[1])!
        } else {
            month = 0
        }
        if Int(fullNameArr[2]) != nil {
            year = Int(fullNameArr[2])!
        } else {
            year = 0
        }
    }
}
