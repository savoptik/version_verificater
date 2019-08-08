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

if verificator(argv[1], argv[2]) {
    print("Номера равны")
} else {
    print("номера не равны")
}
