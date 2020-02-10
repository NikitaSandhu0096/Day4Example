//
//  main.swift
//  Day4Example
//
//  Created by MacStudent on 2020-02-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var p1 = Person(id: 1, name: "Nikita", gender: .FEMALE, birthDate: Date())

var s1 = Student(id: 1, name: "Sandhu", gender: .FEMALE, marks: ["MAD01": 50.0, "MAD01":45.0])

s1.setMarks(code: "MAD03", marks: 70.5)
//s1.setMarks(code: "MAD03", marks: 80.0)
