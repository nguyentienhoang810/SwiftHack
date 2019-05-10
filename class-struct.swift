//value type
//struct Address {
//    var streetAddress: String
//    var city: String
//    var state: String
//    var postalCode: String
//}

//reference type
class Address {
    var streetAddress: String
    var city: String
    var state: String
    var postalCode: String

    init(streetAddress: String, city: String, state: String, postalCode: String) {
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.postalCode = postalCode
    }
}

class Person {          // Reference type
    var name: String      // Value type
    var address: Address  // Value type

    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
}

let kingsLanding = Address(streetAddress: "1 King Way",
                           city: "Kings Landing",
                           state: "Westeros",
                           postalCode: "12345")

let madKing = Person(name: "Aerys", address: kingsLanding)
let kingSlayer = Person(name: "Jaime", address: kingsLanding)

kingSlayer.address.streetAddress = "1 King Way Apt. 1"

madKing.address.streetAddress
kingSlayer.address.streetAddress
