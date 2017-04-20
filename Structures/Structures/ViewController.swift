//
//  ViewController.swift
//  Structures
//
//  Created by adeveloper on 20.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    typealias BlockCode = (Int, (Int)->Void)
    var list = Ochered<BlockCode>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        list.push((10, {
            id in
            print("блок 1  \(id)")
        }))
        
        list.push((3, {
             id in
            print("блок 2  \(id)")
        }))
        
        list.push((4,{
             id in
            print("блок 3  \(id)")
        }))
        
        list.push((7, {
             id in
            print("блок 4  \(id)")
        }))
        
        list.push((8, {
             id in
            print("блок 5  \(id)")
        }))
        
        list.push((9, {
            id in
            print("блок 6  \(id)")
        }))
        
        list.push((12, {
            id in
            print("блок 7  \(id)")
        }))
        
        execute()
    }
    
    
    func execute(){
        if let item:BlockCode = list.pop() {
            item.1(item.0)
        }
        else {
            return
        }
        execute()
    }
}

