import UIKit

// MARK: - Explanation
// The Factory Pattern is a creational design pattern that provides a way to create objects
// without specifying the exact class of object that will be created

// MARK: - Example 1:

protocol Shape {
    func draw()
}

struct Circle: Shape {
    func draw() {
        print("Drawing a Circle")
    }
}


struct Square: Shape {
    func draw() {
        print("Drawing a Square")
    }
}

struct Rectangle: Shape {
    func draw() {
        print("Drawing a Rectangle")
    }
}

enum ShapeType {
    case circle
    case square
    case rectangle
}

/// This is our Factory class
class ShapeCreator {
    /// This is our factory method
   func createShape(shape: ShapeType) -> Shape {
       switch shape {
       case .circle:
           return Circle()
       case .square:
           return Square()
       case .rectangle:
           return Rectangle()
       }
    }
}

let factory = ShapeCreator()
let circle = factory.createShape(shape: .circle)
circle.draw()

