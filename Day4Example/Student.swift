//
//  Student.swift
//  Day4Example
//
//  Created by MacStudent on 2020-02-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Student: Person {
    private lazy var marks = [String: Double]()
    
    init(id: Int, name: String, gender: Gender, marks:[String : Double]){
        super.init(id: id, name: name, gender: gender)
        self.marks = marks
    }
    
    subscript(code: String) -> Double{
        get{
            self.marks[code] ?? 0.0
        }
        set(newValue){
            self.marks.updateValue(newValue, forKey: code)
        }
    }
    
    var total : Double{
        return self.calculateTotal()
    }
    
    var per : Double{
        return self.calculatePer()
    }
    
    var result : String{
        return "Pass"
    }
    
    func setMarks(code: String, marks: Double){
        self.marks.updateValue(marks, forKey: code)
    }
    
    private func calculateTotal() -> Double{
        var t = 0.0
        for m in self.marks{
            t = t + m.value
        }
        return t
    }
    
    private func calculatePer() -> Double{
        return self.total/Double(self.marks.count)
    }
    
}
