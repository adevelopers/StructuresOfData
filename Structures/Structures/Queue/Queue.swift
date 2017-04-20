//
//  Queue.swift
//  Structures
//
//  Created by adeveloper on 20.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation


protocol QueueProtocol {
     associatedtype Item
     func pop() -> Item?
     func push(_ item:Item)
}

//MARK: Node
class Node<T> {
    var item: T
    var next: Node<T>?
    init(_ item: T){
        self.item = item
    }
}

//MARK: Queue
struct Queue<T> {
    var first, last: Node<T>?
    
    mutating func pop() -> T? {
        let pop = first?.item
        first = first?.next
        
        if first == nil {
            last = nil
        }
        
        return pop
    }
    
    mutating func push(_ item: T){
        // если указатель на последний элемент пуст, то ставим в начало очереди
        if last == nil {
            first = Node(item)
            last = first // ставим указатель последнего элемента на начало очереди
        } else {
            last?.next = Node(item)
            last = last?.next
        }
    }
}
