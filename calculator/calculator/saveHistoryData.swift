//
//  saveHistoryData.swift
//  calculator
//
//  Created by Admin on 10/20/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
public class saveHistoryData: ViewController {
    var array: [String] = []
    
    func addArray() {
        for i in 0..<history.count {
            array.append(history[i])
        }
    }
}
