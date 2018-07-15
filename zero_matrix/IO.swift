//
//  IO.swift
//  Check_Permutation
//
//  Created by Andrew Lewis on 7/3/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

// func getInput is not my own creation

import Foundation

class IO {
    
    func getInput() -> String {
        // grab a handle to stdin
        let keyboard = FileHandle.standardInput
        
        // read data in the stream
        let inputData = keyboard.availableData
        
        // convert the data to a string
        let strData = String(data: inputData, encoding: String.Encoding.utf8)!
        
        // remove newline characters
        return strData.trimmingCharacters(in: CharacterSet.newlines)
    }
}
