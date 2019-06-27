//
//  Car.swift
//  testic
//
//  Created by Nickolay Nickitin on 27/06/2019.
//  Copyright © 2019 Nickolay Nickitin. All rights reserved.
//

import Foundation

class Car {
    
    let model: String
    let mark: String
    let color: String
    var position: Car.Coordinate
    
    enum Orientation {
        case up
        case down
        case rigth
        case left
    }
    
    struct Coordinate {
        var x : Int
        var y : Int
    }
    
    init(model: String, mark: String, color: String, position: Car.Coordinate = Car.Coordinate(x: 0, y: 0)) {
        self.model = model
        self.mark = mark
        self.color = color
        self.position = position
    }
    
    func move(direction: Car.Orientation, time: Int, speed: Int) {
        let distance = time * speed
        switch direction {
        case .up:
            position.x += distance
        case .down:
            position.x -= distance
        case .rigth:
            position.y += distance
        case .left:
            position.y -= distance
        }
        print("distance = \(distance), x = \(position.x), y = \(position.y)")
    }
    
    func execute(action: Go) {
        self.move(direction: action.direction, time: action.time, speed: action.speed)
    }
    
}

struct Go {
    let direction : Car.Orientation
    let time : Int
    let speed : Int
}
