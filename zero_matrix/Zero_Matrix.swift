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
        
        print("Randomly seeded array:")
        var randomMatrix = seed_matrix()
        
        print("*********************")
        print("Zeroed array:")
        
        write_matrix(randomMatrix: &randomMatrix)
        
        print("[", terminator:"")
        var count = 0
        for rows in 0...randomMatrix.count-1{
            for columns in 0...randomMatrix[rows].count-1{
                count += 1
                if randomMatrix[rows][columns] < 10{
                    print("0\(randomMatrix[rows][columns]), ", terminator:"")
                }else{
                    print("\(randomMatrix[rows][columns]), ", terminator:"")
                }
                
                if count == randomMatrix[rows].count{
                    print("]")
                    print("[", terminator:"")
                    count = 0
                }
            }
        }
        print("]")
    }
    
    func seed_matrix()->Array<Array<Int>>{
        
        let n = arc4random_uniform(10)+10
        let m = arc4random_uniform(10)+10
        
        var randomMatrix =  [[Int]]()
        
        for rows in 0...n-1 {
            var columnArray = Array<Int>()
            for columns in 0...m-1{
                columnArray.append(Int(arc4random_uniform(25)))
            }
            randomMatrix.append(columnArray)
        }
        
        print("[", terminator:"")
        var count = 0
        for rows in 0...randomMatrix.count-1{
            for columns in 0...randomMatrix[rows].count-1{
                count += 1
                if randomMatrix[rows][columns] < 10{
                    print("0\(randomMatrix[rows][columns]), ", terminator:"")
                }else{
                    print("\(randomMatrix[rows][columns]), ", terminator:"")
                }
                
                if count == randomMatrix[rows].count{
                    print("]")
                    print("[", terminator:"")
                    count = 0
                }
            }
        }
        print("]")
        
        return randomMatrix
    }
    
    func write_matrix( randomMatrix: inout Array<Array<Int>>){
        
        var zeroesLocation = [[Int]]()
        let rowCount = randomMatrix.count-1
        
        for rows in 0...randomMatrix.count-1{
            for columns in 0...randomMatrix[rows].count-1{
                if randomMatrix[rows][columns] == 00{
                    zeroesLocation.append([rows,columns])
                }
            }
        }
        
        for rows in 0...zeroesLocation.count-1{
            zero_matrix(randomMatrix: &randomMatrix, row: zeroesLocation[rows][0], column: zeroesLocation[rows][1])
        }
    }
    
    func zero_matrix(randomMatrix:inout Array<Array<Int>>, row:Int, column:Int){
        
        for columns in 0...randomMatrix[row].count-1{
            randomMatrix[row][columns] = 00
        }
        
        for rows in 0...randomMatrix.count-1{
            randomMatrix[rows][column] = 00
        }
    }
}
