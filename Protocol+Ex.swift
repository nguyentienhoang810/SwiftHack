struct Dog {
  var name: String?
}

protocol DogProtocol{}

extension DogProtocol {
  func walk() {
    print("this dog able to walk")
  }
}

extension Dog: DogProtocol{}

let dog = Dog(name: "gaugau")
dog.walk()
