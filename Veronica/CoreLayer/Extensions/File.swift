//
//  String.swift
//  Veronica
//
//  Created by Дмитрий Савинов on 19.10.2020.
//

import Foundation
import Files

extension File {
    
    /// Reafactoring content inside the file
    /// - Parameter replacement: dictionary of words that needs to be changed with another options in File
    func refactorContent(with replacement: [String: String]) {
            let fileData = try? readAsString()
            let refactoredfileData = fileData?.replacingOccurrences(with: replacement)
            try? write(refactoredfileData.unwrap())
    }
}
