//
//  StarViewMode;.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/25.
//

import Foundation
import CoreImage
class StarViewModel: ObservableObject {
    @Published var stars: [Bool] = [false, false, false, false, false]
    func tap(starIndex: Int) {
        if stars[starIndex] == false {
            crean()
            for i in 0 ... starIndex {
                stars[i] = true
            }
        }else if stars[starIndex] == true {
            crean()
        }
    }
    func crean(){
        self.stars = [false, false, false, false, false]
    }
    func get() -> Int{
        var array: [Bool] = []
        for i in self.stars {
            if i == true {
                array.append(i)
            } else {
                break
            }
        }
        return array.count
    }
    
    
}
