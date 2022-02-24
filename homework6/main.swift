//
//  main.swift
//  homework6
//
//  Created by Aurelica Apps iOS Dev - 1 on 24/02/22.
//

import Foundation

print("Hello, World!")

struct queue<T> {

    // создание пустого массива
    private var myElements: [T] = []


    // проверка на наличие символа в коллекции
    var isEmpty: Bool {
        return myElements.count == 0
    }
    

    mutating func enqueue(element: T) {
        myElements.append(element)
    }
    mutating func dequeue()->T {
        return myElements.removeLast()
    }

    public var checkingForEmpty: T? {
        if isEmpty {
            print("Empty array")
            return nil
        } else {
            print("well done")
            return (myElements as! T)
        }
    }


}


struct User {
    var name: String!
    var age: Int!
    var hasCar: Bool!
    var cars: [String]!
}

var users: [User] = []
users.append(User(name: "Vasiliy", age: 23, hasCar: true, cars: ["Tesla", "Chayka", "Escalade"]))
users.append(User(name: "Andrey", age: 34, hasCar: true, cars:["Urus"]))
users.append(User(name: "Edem", age: 16, hasCar: true, cars:["Audi", "Chevrolet"]))


//extension Array {
//    func indexExists(_ index: Int) -> Bool {
//      return self.indices.contains(index)
//    }
//}
let carArray = ["Urus", "Escalade"]
let capitalizedBrands = carArray.map { $0.capitalized }


users = users.filter { $0.cars.contains(carArray[0]) || $0.cars.contains(carArray[1])}


users = users.filter { $0.cars.contains(where: { carArray.contains($0) }) }

print(users)


extension User: CustomStringConvertible {
    var description : String {
        return "Name: \(String(describing: name)) has a : \(String(describing: cars ?? nil))"
    }

}
