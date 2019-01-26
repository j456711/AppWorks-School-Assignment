/*
-----------------------------------
Enumerations and Optionals in Swift
-----------------------------------
*/

//1-1 & 1-2 & 1-3
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice() -> Double {
        switch self {
        case .oil92: return 26.5
        case .oil95: return 27.5
        case .oil98: return 28.5
        case .diesel: return 30.5
        }
    }
}

//1-4
/*
 associated values可以跟enum member結合在一起，而且它的type可以跟enum mumber相異。這讓我們能夠儲存其他附加的資訊，並且在之後使用enum member時，可以自行定義這些資訊，讓資訊產生變化。以下方的WeatherCondition舉例：
*/
enum WeatherCondition {
    case sunny(temperature: Double) //在這裡使用Double作為associated values，並且使用temperature作為parameter label
    
    //建立一個method，將Double指定為一個常數，並命名為temperature，並在print結果中帶入此常數
    func getNotice() {
        switch self {
        case .sunny(let temperature): print("Today is \(temperature) degrees. Wear a hat!")
        }
    }
}
//此時呼叫WeatherCondition，指定terperature為33.4，可以看到console print出結果
WeatherCondition.sunny(temperature: 33.4).getNotice()


//2-1
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
}

//2-2
let xiaoChih = People()
xiaoChih.pet = Pet(name: "Pikachu")

func hasPet(owner: People) -> String {
    guard let pet = xiaoChih.pet?.name else {
        return "Where's my Pokemon?"
    }
    return "I have a pet named \(pet)."
}

print(hasPet(owner: xiaoChih))

//2-3
let doctorDaMoo = People()

func hasAnotherPet(owner: People) -> String {
    if let pet = doctorDaMoo.pet?.name {
        return "I have a pet named \(pet)."
    }
    else {
        return "Where's my Pokemon?"
    
    }
}

print(hasAnotherPet(owner: doctorDaMoo))
