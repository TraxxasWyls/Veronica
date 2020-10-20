//
//  main.swift
//  Veronica
//
//  Created by Дмитрий Савинов on 19.10.2020.
//

import Foundation
import Files

let folder = try Folder(path: "/Users/savinov/Desktop/CalculatorHistory")

var replacements = [
    "CalculatorHistory": "History",
    "Assembly": "AssemblyWhat"
]

try folder.renameAll(with: replacements)
print("Hello, World!")

