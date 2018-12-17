
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
