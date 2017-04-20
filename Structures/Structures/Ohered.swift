//
//  Ohered.swift
//  Structures
//
//  Created by adeveloper on 20.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation


class Uzel<T> {
    var item:T
    var next: Uzel<T>?
    init(_ item: T) {
        self.item = item
    }
}

struct Ochered<T> {
    var perviy, posledniy: Uzel<T>?
    
    mutating func pop() -> T? {
        let pop  = perviy?.item
        perviy = perviy?.next
        
        if (perviy == nil){
            posledniy = nil
        }
        
        return pop
    }
    
    mutating func push(_ item: T){
        if posledniy == nil {
            perviy = Uzel(item)
            posledniy = perviy
        } else {
            posledniy?.next = Uzel(item)
            posledniy = posledniy?.next
        }
        
    }
}
