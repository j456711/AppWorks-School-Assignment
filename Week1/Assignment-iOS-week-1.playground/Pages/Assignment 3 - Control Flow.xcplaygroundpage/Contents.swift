/*
 --------------------------------------------------------------
 Assignment 3: Swift Collection and Control Flow - Control Flow
 --------------------------------------------------------------
 */

//1
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for lottoNumber in lottoNumbers[3...] {
    
    print(lottoNumber)
    
}

//2-1
for number in 5...10 {
    
    print(number)
    
}

//2-2
for number in stride(from: 10, to: 4, by: -2) {
    
    print(number)
    
}

//3-1
var x = 5

while x <= 10 {
    
    print(x)
    x += 1
    
}

//3-2
x = 10

while x >= 5 {
    
    print(x)
    x -= 2
    
}

//4
var y = 10

repeat {
    
    print(y)
    y -= 2
    
} while y >= 5

//5
var isRaining = true

if isRaining {
    print("It’s raining, I don’t want to work today.")
}
else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//6
var jobLevel = 0

switch jobLevel {
    
case 1: "Member"
case 2: "Team Leader"
case 3: "Manager"
case 4: "Director"
default: "We don't have this job"
    
}
