/*
 ------------------------------------------------------------
 Assignment 3: Swift Collection and Control Flow - Collection
 ------------------------------------------------------------
 */

//1
var myFriends: [String] = []

//2
myFriends = ["Ian", "Bomi", "Kevin"]

//3
myFriends.append("Michael")

//4
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//5
for myFriend in myFriends {
    
    print(myFriend)
    
}

//6
myFriends.count
/*
 myFriends array當中，index 5並沒有朋友。因為利用.count method可以知道，這個array當中只有4位朋友，而index 5指的則是第6位朋友，此人不存在。
*/

//7
myFriends[0]

//8
myFriends.count
myFriends[3]

//9
var myCountryNumber = [String: Int]()

//10
myCountryNumber = [

    "US": 1,
    "GB": 44,
    "JP": 81

]

//11
myCountryNumber["GB"] = 0

//12
/*
 先宣告變數名稱，再指定key跟value的type，例如第9題當中，先宣告變數myCountryNumber，再指定key為type String，value為type Int，即可創造一個empty dictionary。
*/

//13
/*
 有兩種方式：
 1. 將value指定為nil，例如：
 myCountryNumber["US"] = nil

 2. 使用.removeValue(forKey: _)，例如：
 myCountryNumber.removeValue(forKey: "US")
*/
