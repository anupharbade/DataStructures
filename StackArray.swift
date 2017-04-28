//
//  Stack.swift
//  Stack
//
//  Created by Anup Harbade on 4/28/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import Foundation


class StackArray<Item> {
    
    var top = -1
    var maxCount = 0
    fileprivate lazy var stackArray: [Item] = [Item]()
    
    init?(count:Int) {
        if count <= 0 {
            return nil
        }
        maxCount = count
        
    }
    
    func isEmpty() -> Bool {
       return (top == -1) ? true : false
    }
    
    func push(item: Item?) -> Bool {
        
        guard stackArray.count < maxCount else {
            print("Stack is full, can not add more items")
            return false
        }
        
        if let item = item {
            stackArray.append(item)
            top += 1
            print("item is addedd successfully, new top is at index \(top)")
            return true
        } else {
            print("Invalid input for Stack, input is nil")
            return false
        }
        
    }
    
    func pop() -> (Int, Item?) {
        guard top >= 0 else {
            print("Stack is still empty, can not remove an item")
            return (-1, nil)
        }
        
        let item : Item? = stackArray.removeLast()
        let prevTop = top
        top -= 1
        print("Top item is removed from stack, new top is at index \(top)")
        return (prevTop, item)
    }
}
