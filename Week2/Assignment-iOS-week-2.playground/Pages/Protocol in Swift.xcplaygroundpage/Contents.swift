/*
 -----------------
 Protocol in Swift
------------------
*/

protocol PoliceMan {
    func arrestAnimals()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    
    func arrestAnimals() {}
}

struct Engineer: ToolMan {
    func fixComputer() {}
}

let engineer = Engineer()
let person = Person(name: "Steve", toolMan: engineer)
