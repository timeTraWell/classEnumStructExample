//
//  main.swift
//  testic
//
//  Created by Nickolay Nickitin on 26/06/2019.
//  Copyright © 2019 Nickolay Nickitin. All rights reserved.
//

import Foundation

let car = Car(model: "Vaz", mark: "2107", color: "Cherry")

car.execute(action: Go(direction: .up, time: 10, speed: 15))
car.execute(action: Go(direction: .up, time: 7, speed: 4))
car.execute(action: Go(direction: .rigth, time: 20, speed: 10))
