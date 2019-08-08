//
//  VersionNumber.swift
//  version_verificater
//
//  Created by Артём Семёнов on 30.07.2019.
//  Copyright © 2019 Артём Семёнов. All rights reserved.
//

import Foundation

    private func correctNumberTest(_ str: String) -> Bool {
        for char in str {
            if !char.isNumber && (char != ".") {
                return false
            }
        }
        return true
    }

    public func verificator(_ numberString1: String, _ numberString2: String) -> Bool {
        if !correctNumberTest(numberString1) || numberString1.isEmpty || !correctNumberTest(numberString2) || numberString2.isEmpty {
            NSLog("Подана некорректная строка")
            exit(0)
        } else {
            var number1: [Int] = stringPars(numberString1)
            var number2: [Int] = stringPars(numberString2)
            number1 = zeroRemovve(number1)
            number2 = zeroRemovve(number2)
            return condition(number1, number2)
        }
    }

    private func stringPars(_ str: String) -> [Int] {
        var number: [Int] = []
        var index = 0
        while !str[str.index(str.startIndex, offsetBy: index)].isNumber && (index < str.count) {
            number.append(0)
            index += 1
        }
        let nums = str.split(separator: ".")
        for substr in nums {
            number.append(Int(String(substr))!)
        }
        return number
    }

private func zeroRemovve(_ inputNumber: [Int]) -> [Int] {
    var number: [Int] = inputNumber
        if !number.isEmpty {
            while number.last! == 0 {
                number.removeLast()
            }
        }
    return number
}

    private func condition(_ left: [Int], _ right: [Int]) -> Bool {
        if left.count != right.count {
            return false
        } else {
            var response: Bool = true
            var index = 0
            while response && (index < left.count) {
                if left[index] != right[index] {
                    response = false
                } else {
                    index += 1
                }
            }
            return response
        }
    }

