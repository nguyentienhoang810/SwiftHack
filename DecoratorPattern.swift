
/*
Core Component — it is the base class or protocol which our base object will subclass / implement. -- Animal()
Concrete Component — implemetation (or again, subclass) of Core Component. -- Dog() 
Decorator — again implementation (or subclass) of Core Component. 
            Concrete Decorator has capability of wrapping around Components or 
            other Decorators and building structures. CharacterType protocol is our Decorator here.
Concrete Decorator — implementation of Decorator. All structs like Warlord, Mage or Epic are Concrete Decorators.

Perfetct example and explaination here
https://medium.com/design-patterns-in-swift/design-patterns-in-swift-decorator-pattern-2026e7112869
*/

//Core component
protocol Animal {
  init()
  var name: String { get set }
}

enum Size {
  case small, medium, large
}

struct Dog: Animal {
  var name: String = "hachiko"
}

protocol Sized {
  var size: Size { get set }
}

struct StaticSizedAnimal<T: Dog> : Sized {
  var size: Size
  private var _dog: T = T()
  var name: String {
    get {
      return _dog.name
    }
    set {
      _dog.name = newValue
    }
  }
  
  init(size: Size) {
    self.size = size
  }
}

extension StaticSizedAnimal:  CustomStringConvertible { 
  var des: String {
    return "\(name), \(size)"
  }
}

let dog1 = StaticSizedAnimal<Dog>(size: .small)
print(dog1)

//hachiko small
