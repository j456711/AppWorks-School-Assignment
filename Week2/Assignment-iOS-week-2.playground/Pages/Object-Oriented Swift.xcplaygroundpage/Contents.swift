/*
----------------------
 Object-Oriented Swift
 ---------------------
*/

//1
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    
    let gender: Gender
    
    init(withGender gender: Gender) {
        self.gender = gender
    }
    
    func eat() -> String {
        return "I eat everything!"
    }
    
}

print(Animal(withGender: Gender.undefined).eat())

//2
class Elephant: Animal {
    
    override init(withGender gender: Gender) {
        super.init(withGender: gender)
    }
    
    override func eat() -> String {
        return "bark"
    }
    
}
print(Elephant(withGender: Gender.undefined).eat())

class Tiger: Animal {
    
    override init(withGender gender: Gender) {
        super.init(withGender: gender)
    }
    
    override func eat() -> String {
        return "deer"
    }
    
}
print(Tiger(withGender: Gender.undefined).eat())

class Horse: Animal {
    
    override init(withGender gender: Gender) {
        super.init(withGender: gender)
    }
    
    override func eat() -> String {
        return "grass"
    }
    
}
print(Horse(withGender: Gender.undefined).eat())

//3
class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Animal(withGender: Gender.undefined))

zoo.weeklyHot = Tiger(withGender: Gender.undefined)
zoo.weeklyHot = Elephant(withGender: Gender.undefined)
zoo.weeklyHot = Horse(withGender: Gender.undefined)

//4
/*
 在這個單元當中，學習到兩種組成object的方式：struct和class。兩者的功能類似，都可以幫助我們自行定義想要的data type，並透過instance應用在程式當中。
 不過它們也有不同之處，例如：
 1. struct內建initializer，但class需要自行定義，或者直接設定初始值。
 2. class有inheritance的功能，可以在subclass中override initializer跟methods。
 3. struct是value type，但class是reference type，兩者儲存data的方式也不同。
*/

//5
/*
 首先，在語法上，struct會內建member wise initializer，因此有需要時再寫init method即可。class則是相反，必須寫出init method，由我們自行定義初始值。
 再來，兩者的type不同。struct是value type，而class是reference type。
 當我們將struct的instance指定給一個常數或變數時，swift會將裡面的值重新複製一份。等於說此常數或變數擁有的是一份副本，如果我們在副本上做更動，並不會影響到原始的instance。
 而當我們將class的instance指定給一個常數或變數時，並不會重新複製，仍然是指向原始的值，所以只要對此常數或變數做更動，原始的instance也會跟著一起改變。
 另外，class會做inheritance，但struct不會。inheritance讓我們在主要的superclass之外，建立其餘附屬於它的subclass。在subclass裡，可以增加新的stored properties和更改methods。
*/

//6
/*
 instance method如字面上的意思，就是能夠作用在特定type的instance上，它的語法跟函數是一樣的。當要呼叫instance method時，必須利用dot notation。
 type method則是作用在type本身身上，而不是instance上。語法是在func前加上static，如果是在class裡面使用，則是在func前加上class。當要呼叫type method時，必須利用dot notation。
*/

//7
/*
 struct中內建member wise initializer，所以會自動產生parameter，因此有需要的時候再寫出來即可。當直接寫出來的時候，我們也可以直接定義初始值。
 class則必須由我們直接寫出initializer跟parameter，並定義初始值。
*/

//8
/*
 在instance method中，通常如果我們沒有將self寫出來，則self指的是在這個instance中的property或者method。不過有一個例外是，當instance method的parameter name跟property name相同的時候，就會在property name前加上self，以區分兩者。
 在type method中，self指的則是type本身。
*/

//9
/*
 當我們將value type的資料，指定給一個常數或變數，或者傳送到一個函數裡面時，swift會將資料裡面的值重新複製一份，再指定給這個新的常數或變數。
 而當我們將reference type的資料，指定給一個常數或變數，或者傳送到一個函數裡面時，這個常數或變數裡面所擁有的值，仍然是指向原始的值。所以只要對此常數或變數裡的值做更動，原始的資料也會跟著一起改變。
*/
