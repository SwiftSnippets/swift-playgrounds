import Cocoa

let array = [6,2,3,9,4,1]

// we need to add 1 to each of the items of the array
// we can avoid using for loop by using map, which allows us
// to transform every single item in a collection type (array or dictionary)

func addOne (n1: Int ) -> Int {
    return n1 + 1
}

// the map function takes an input in the form of another function

array.map(addOne)

// we can write less code for performing the same functionality using closures

array.map{
    (n1) in
    n1 + 1
}

//we can simplify it more

array.map{$0 + 1}

// we can use map, reduce and filter to manipulate arrays

// What if we need to convert all the items in our array to Strings

let newArray = array.map{"\($0)"}
