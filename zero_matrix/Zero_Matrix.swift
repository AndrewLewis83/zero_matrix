//
//  Zero_Matrix.swift
//  zero_matrix
//
//  Created by Andrew Lewis on 7/15/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

import Foundation

class Zero_Matrix {
    
    let inputOutput = IO()
    
    func startingPoint(){
        
        var randomMatrix = seed_matrix()
        
        zero_matrix(randomMatrix: &randomMatrix)
        
    }
    
    func seed_matrix()->Array<Array<Int>>{
        
        let n = arc4random_uniform(30)+20
        let m = arc4random_uniform(30)+20
        
        var randomMatrix =  [[Int]]()
        
        for rows in 0...n-1 {
            var columnArray = Array<Int>()
            for columns in 0...m-1{
                columnArray.append(Int(arc4random_uniform(10)))
            }
            randomMatrix.append(columnArray)
        }
        
        for elements in randomMatrix {
            print(elements)
        }
        
        return randomMatrix
    }
    
    func zero_matrix( randomMatrix: inout Array<Array<Int>>){
        
        for rows in 0...randomMatrix.count-1{
            for columns in 0...randomMatrix[rows].count-1{
                if randomMatrix[rows][columns] == 0{
                    randomMatrix[rows] = Array(repeating: 0, count: randomMatrix.count-1)
                    
                }
            }
        }
        
        for elements in randomMatrix {
            print(elements)
        }
    }
}
