//
//  CarsModel.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 03.08.2023.
//

import Foundation
import UIKit

enum CarsType: String {
    case Sportcar = "Спорткар"
    case SUV = "Внедорожник"
    case Sedan = "Седан"
}

enum EngineType: String {
    case ElectricMotor = "Электродвигатель"
    case GasolineEngine = "Бензиновый двигатель"
    case DieselEngine = "Дизельный двигатель"
}

enum DoorsType: String {
    case DoubleDoor = "Двудверный"
    case FourDoor = "Четырехдверный"
    
}

struct Logo {
    let image: UIImage
    let name: String
}

struct CarsModel {
    
    let carMake: String
    let model: String
    let mainImage: UIImage
    let subImage: UIImage? = nil
    let power: String
    let doors: DoorsType
    let type: CarsType
    let logo: Logo? = nil
    let engine: EngineType
    let price: String
}
