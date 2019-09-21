import Cocoa

let pizzaSizeInInches = 12
var numberOfPeople = 10
let numberOfSlicesPerPerson = 4

//For computed properties, we need to use the "var" key word and we need to specify the return type explicitly
//We can get rid of the getter "get keyword" and the computed property will function in the same way
//To set the value of a computed property, we need to create a setter for it, which is executed at the exact moment where the value is set
//We can see the new assigned value using a special variable called "newValue"
var numberOfSlices : Int {
    get{
        return pizzaSizeInInches - 4
    }
    set {
        print("number of slices has been assigned a new value, which is \(newValue)")
    }
}

var numberOfPizzas : Int {
    get {
        let numberOfPeopleFedByPizza = numberOfSlices / numberOfSlicesPerPerson
        return numberOfPeople / numberOfPeopleFedByPizza
    }
    set{
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / numberOfSlicesPerPerson
    }
}

print(numberOfSlices)
numberOfSlices = 9

numberOfPizzas = 5

print(numberOfPeople)
