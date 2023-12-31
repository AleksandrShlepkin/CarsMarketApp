//
//  MokCars.swift
//  CarsMarketApp_TestTask
//
//  Created by Mac on 04.08.2023.
//

import UIKit

class MokCars {
    
    public var arrayLogo: [Logo] = []
    public var arrayCar: [CarsModel] = []
    public var sortedArray: [CarsModel] = []
    
    init() {
        makeMokLogo()
        makeMokeCars()
    }
    
}

//MARK: - Make mokobject logo car

extension MokCars {
    
    private func makeMokLogo() {
        let mazda = Logo(image: UIImage(named: "mazda")!, name: "Mazda")
        let bmw = Logo(image: UIImage(named: "bmw")!, name: "BMW")
        let lexus = Logo(image: UIImage(named: "lexus")!, name: "Lexus")
        let toyota = Logo(image: UIImage(named: "toyota")!, name: "Toyota")
        let vw = Logo(image: UIImage(named: "vw")!, name: "VW")
        let audi = Logo(image: UIImage(named: "audi")!, name: "Audi")
        let mercedes = Logo(image: UIImage(named: "mercedes")!, name: "mercedes")
        let allCars = Logo(image: UIImage(named: "all")!, name: "all")
        
        arrayLogo.append(mazda)
        arrayLogo.append(bmw)
        arrayLogo.append(lexus)
        arrayLogo.append(toyota)
        arrayLogo.append(vw)
        arrayLogo.append(audi)
        arrayLogo.append(mercedes)
        arrayLogo.append(allCars)
    }
}

//MARK: - Make mokobject cars

extension MokCars {
    
    private func makeMokeCars() {
        let mercedesAMG = CarsModel(carMake: "Mercedes",
                                    model: "AMG",
                                    mainImage: UIImage(named: "mercedes_amg")!,
                                    power: "630HP",
                                    doors: DoorsType.DoubleDoor,
                                    type: CarsType.Sportcar,
                                    engine: EngineType.GasolineEngine,
                                    price: " 18'800'000 руб",
                                    calculation: 18000000 )
        
        let mercedesCLA = CarsModel(carMake: "Mercedes",
                                    model: "CLA",
                                    mainImage: UIImage(named: "mercedes_cla")!,
                                    power: "180HP",
                                    doors: DoorsType.DoubleDoor,
                                    type: CarsType.Sedan,
                                    engine: EngineType.ElectricMotor,
                                    price: " 5'600'000 руб",
                                    calculation: 56000000 )
        
        let mercedesGLS = CarsModel(carMake: "Mercedes",
                                    model: "GLS",
                                    mainImage: UIImage(named: "mercedes_gls")!,
                                    power: "520HP",
                                    doors: DoorsType.FourDoor,
                                    type: CarsType.SUV,
                                    engine: EngineType.DieselEngine,
                                    price: " 15'900'000 руб",
                                    calculation: 15900000 )
        
        let audiA7 = CarsModel(carMake: "Audi",
                               model: "A7",
                               mainImage: UIImage(named: "audi_a7")!,
                               power: "320HP",
                               doors: DoorsType.FourDoor,
                               type: CarsType.Sedan,
                               engine: EngineType.DieselEngine,
                               price: " 9'990'000 руб",
                               calculation: 9990000 )
        
        let audiQ7 = CarsModel(carMake: "Audi",
                               model: "Q7",
                               mainImage: UIImage(named: "audi_q7")!,
                               power: "530HP",
                               doors: DoorsType.FourDoor,
                               type: CarsType.SUV,
                               engine: EngineType.DieselEngine,
                               price: " 12'900'000 руб",
                               calculation: 12900000 )
        
        let audiR8 = CarsModel(carMake: "Audi",
                               model: "R8",
                               mainImage: UIImage(named: "audi_r8")!,
                               power: "630HP",
                               doors: DoorsType.DoubleDoor,
                               type: CarsType.Sportcar,
                               engine: EngineType.GasolineEngine,
                               price: " 28'000'000 руб",
                               calculation: 28000000 )
        
        let bmw3 = CarsModel(carMake: "BMW",
                             model: "3",
                             mainImage: UIImage(named: "bmw_3")!,
                             power: "160HP",
                             doors: DoorsType.FourDoor,
                             type: CarsType.Sedan,
                             engine: EngineType.GasolineEngine,
                             price: " 4'900'000 руб",
                             calculation: 4900000 )
        
        let bmwM3 = CarsModel(carMake: "BMW",
                              model: "M3",
                              mainImage: UIImage(named: "bmw_m3")!,
                              power: "630HP",
                              doors: DoorsType.DoubleDoor,
                              type: CarsType.Sportcar,
                              engine: EngineType.GasolineEngine,
                              price: " 8'900'000 руб",
                              calculation: 8900000 )
        
        let bmwX6 = CarsModel(carMake: "BMW",
                              model: "X6",
                              mainImage: UIImage(named: "bmw_x6")!,
                              power: "430HP",
                              doors: DoorsType.FourDoor,
                              type: CarsType.SUV,
                              engine: EngineType.DieselEngine,
                              price: " 12'900'000 руб",
                              calculation: 12900000 )
        
        let lexusIX = CarsModel(carMake: "Lexus",
                                model: "IX",
                                mainImage: UIImage(named: "lexus_ix")!,
                                power: "480HP",
                                doors: DoorsType.DoubleDoor,
                                type: CarsType.Sportcar,
                                engine: EngineType.GasolineEngine,
                                price: " 7'900'000 руб",
                                calculation: 7900000 )
        
        let lexusLS = CarsModel(carMake: "Lexus",
                                model: "LS",
                                mainImage: UIImage(named: "lexus_ls")!,
                                power: "349HP",
                                doors: DoorsType.FourDoor,
                                type: CarsType.SUV,
                                engine: EngineType.DieselEngine,
                                price: " 13'900'000 руб",
                                calculation: 13900000 )
        
        let mazda6 = CarsModel(carMake: "Mazda",
                               model: "6",
                               mainImage: UIImage(named: "mazda_6")!,
                               power: "180HP",
                               doors: DoorsType.FourDoor,
                               type: CarsType.Sedan,
                               engine: EngineType.GasolineEngine,
                               price: " 2'900'000 руб",
                               calculation: 2900000 )
        
        let mazdaCX5 = CarsModel(carMake: "Mazda",
                                 model: "CX5",
                                 mainImage: UIImage(named: "mazda_cx5")!,
                                 power: "180HP",
                                 doors: DoorsType.FourDoor,
                                 type: CarsType.SUV,
                                 engine: EngineType.DieselEngine,
                                 price: " 3'900'000 руб",
                                 calculation: 3900000 )
        
        let mazdaMX5 = CarsModel(carMake: "Mazda",
                                 model: "MX5",
                                 mainImage: UIImage(named: "mazda_mx5")!,
                                 power: "240HP",
                                 doors: DoorsType.DoubleDoor,
                                 type: CarsType.Sportcar,
                                 engine: EngineType.GasolineEngine,
                                 price: " 8'900'000 руб",
                                 calculation: 89000000 )
        
        let toyotaCamry = CarsModel(carMake: "Toyota",
                                    model: "Camry",
                                    mainImage: UIImage(named: "toyota_camry")!,
                                    power: "249HP",
                                    doors: DoorsType.FourDoor,
                                    type: CarsType.Sedan,
                                    engine: EngineType.GasolineEngine,
                                    price: " 3'900'000 руб",
                                    calculation: 3900000 )
        
        let toyotaCorolla = CarsModel(carMake: "Toyota",
                                      model: "Corolla",
                                      mainImage: UIImage(named: "toyota_corolla")!,
                                      power: "120HP",
                                      doors: DoorsType.FourDoor,
                                      type: CarsType.Sedan,
                                      engine: EngineType.GasolineEngine,
                                      price: " 1'900'000 руб",
                                      calculation: 1900000 )
        
        let toyotaSupra = CarsModel(carMake: "Toyota",
                                    model: "Supra",
                                    mainImage: UIImage(named: "toyota_supra")!,
                                    power: "380HP",
                                    doors: DoorsType.DoubleDoor,
                                    type: CarsType.Sportcar,
                                    engine: EngineType.GasolineEngine,
                                    price: " 18'900'000 руб",
                                    calculation: 13900000 )
        
        
        let vwPicup = CarsModel(carMake: "VW",
                                model: "Picup",
                                mainImage: UIImage(named: "vw_picup")!,
                                power: "349HP",
                                doors: DoorsType.FourDoor,
                                type: CarsType.SUV,
                                engine: EngineType.GasolineEngine,
                                price: " 8'900'000 руб",
                                calculation: 8900000 )
        
        let vwPolo = CarsModel(carMake: "VW",
                               model: "Polo",
                               mainImage: UIImage(named: "vw_polo")!,
                               power: "120HP",
                               doors: DoorsType.FourDoor,
                               type: CarsType.Sedan,
                               engine: EngineType.GasolineEngine,
                               price: " 1'900'000 руб",
                               calculation: 1900000 )
        
        
        arrayCar.append(mercedesAMG)
        arrayCar.append(mercedesCLA)
        arrayCar.append(mercedesGLS)
        arrayCar.append(bmw3)
        arrayCar.append(bmwM3)
        arrayCar.append(bmwX6)
        arrayCar.append(mazda6)
        arrayCar.append(mazdaCX5)
        arrayCar.append(mazdaMX5)
        arrayCar.append(lexusIX)
        arrayCar.append(lexusLS)
        arrayCar.append(toyotaCamry)
        arrayCar.append(toyotaSupra)
        arrayCar.append(toyotaCorolla)
        arrayCar.append(audiA7)
        arrayCar.append(audiQ7)
        arrayCar.append(audiR8)
        arrayCar.append(vwPolo)
        arrayCar.append(vwPicup)
    }
}

extension MokCars {
    
    public func sortedCarsArray(name: String)  {
        var sortedArray = arrayCar
        sortedArray.removeAll(where: { $0.carMake != name })
        self.sortedArray = sortedArray
    }
}
