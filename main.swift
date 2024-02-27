import Foundation

enum Month: String {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

enum HttpMethods: Int {
    case Get = 1, Put, Post, Delete
}


enum Sex {
    case Male
    case Female
}
enum AgeCategory {
    case Young
    case Adult
    case Senior
}
enum Experience {
    case Intern
    case Junior
    case Middle
    case Senior
}

struct Employee {
    var Name: String
    var Sex: Sex
    var AgeCategory: AgeCategory
    var Experience: Experience
}


enum RainbowColor: Int {
    case Red = 1, Orange, Yellow, Green, Blue, Indigo, Violet
}

enum AnimalType: String {
    case Fish
    case Birds
    case Reptiles
    case Mammals
    case Amphibians
    case Invertebrates
}
enum Habitat: String {
    case Water
    case Air
    case Earth
    case Everywhere
}
func printAnimalsHabitat() {
    let animals = [AnimalType.Fish, AnimalType.Birds, AnimalType.Reptiles, AnimalType.Mammals, AnimalType.Amphibians, AnimalType.Invertebrates]
    let habitat = [Habitat.Water, Habitat.Air, Habitat.Earth, Habitat.Everywhere, Habitat.Everywhere, Habitat.Everywhere]
    for i in 0..<6 {
        print("\(animals[i].rawValue) live \(habitat[i].rawValue)")
    }
}

printAnimalsHabitat()

enum Score: String {
    case A, B, C, D, F
}
func printNumericScore(score: Score) {
    switch score {
    case .A:
        print("5")
    case .B:
        print("4")
    case .C:
        print("3")
    case .D:
        print("2")
    case .F:
        print("1")
    }
}

printNumericScore(score: Score.A)
printNumericScore(score: Score.B)
printNumericScore(score: Score.C)
printNumericScore(score: Score.D)
printNumericScore(score: Score.F)

enum CarBrand: String {
    case Lada, Kia, Lexus, BMW, Audi, Volkswagen, Volvo
}
class Garage {
    var cars: [CarBrand]
    init(cars: [CarBrand]) {
        self.cars = cars
    }
    func printCars() {
        for car in cars {
            print(car.rawValue)
        }
    }
}
let myGarage = Garage(cars: [CarBrand.Volkswagen, CarBrand.Lexus])
myGarage.printCars()
