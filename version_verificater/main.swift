//
//  main.swift
//  version_verificater
//
//  Created by Артём Семёнов on 30.07.2019.
//  Copyright © 2019 Артём Семёнов. All rights reserved.
//

import Foundation

let argv = CommandLine.arguments

if argv.count == 1 {
    NSLog("Ошибка, вы не ввели параметры")
    exit(1)
}

if argv.count == 2 {
    NSLog("Вы ввели только один аргумент для сравнения")
    exit(2)
}

if argv.count > 3 {
    NSLog("Вы ввели больше двух номеров")
    exit(3)
}

let num1 = VersionNumber.init(numberString: argv[1])
let num2 = VersionNumber.init(numberString: argv[2])

if num1 == num2 {
    print("Это одинаковые номера")
} else {
    if num1 > num2 {
        print("Первый номер больше второго")
    } else {
        print("Второй номер больше первого")
    }
}
