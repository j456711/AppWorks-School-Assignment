/*
-------------------------
Assignment 2: Swift Basic
-------------------------
*/

//1
let Pi: Double = 3.1415

//2
let x: Int = 30
let y: Int = 70
let average = (x + y) / 2

//3-1
/*
 let x: Double = 30
 let y: Double = 70
 let average = (x + y) / 2
*/

//3-2
/*
 (10/3)是type Int所做的運算，運算結果的type也是Int；而(10.0/3.0)是type Double所做的運算，運算結果的type是Double，兩者type不同。
*/

//4
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//5
var salary = 22000
salary += 28000

//6
//Answer: ==

//7
let a: Int = 10
let b: Int = 3
let remain: Int = a % b

//8
/*
 let宣告的是一個常數(constant)，宣告後不能改變其值；
 var宣告的是一個變數(variable)，宣告後可以任意改變其值。
*/

//9
/*
 1. Cannot start with a number
 2. No whitespace characters
 3. No special characters e.g. ! or . or , or ? ...etc
 4. No mathematical symbols e.g. + or - or * or /
 5. use camelCase
*/

//10
/*
 當我們在宣告變數或常數時，如果沒有明確寫出它的type，則swift會依照我們assign的值去進行推斷。
 例如：
 let someValue = 10
 則swift會自動推斷someValue的的type為Int。
 又例如：
 let somValue2 = 40.5
 則swift會自動推斷somValue2的type為Double。在推斷有小數的值時，swift總是會推斷為Double而不會是Float。
*/

//11
/*
 一開始宣告phoneNumber時，已將它指定為type Int，所以無法再指定為type String。
 因為Swift是一種type-safe的程式語言，他鼓勵使用者清楚地定義值的type以減少錯誤，因此一旦宣告變數或常數的type後，就不允許再更改。
*/
