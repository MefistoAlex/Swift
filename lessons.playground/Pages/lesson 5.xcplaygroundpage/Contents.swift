//: [Previous](@previous)

import Foundation

//
// ### Задание 1
// Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
//
// - Игра с Салават Юлаев - 3:6
//
// - Игра с Салават Юлаев - 5:5
//
// - Игра с Авангард - 2:1
//
// - Игра с Авангард - 2:3
//
// - Игра с АкБарс - 3:3
//
// - Игра с АкБарс - 1:2

func printScores(games: [String: [GameScore]]) {
    for (key, value) in games {
        for score in value {
            print("Game with \(key) - \(score.homeScore):\(score.guestScore)")
        }
    }
}

struct GameScore {
    var homeScore = 0
    var guestScore = 0
}

var games = Dictionary<String, [GameScore]>()

var scores = [GameScore]()
scores.append(GameScore(homeScore: 1, guestScore: 0))
scores.append(GameScore(homeScore: 3, guestScore: 4))
scores.append(GameScore(homeScore: 4, guestScore: 5))
scores.append(GameScore(homeScore: 7, guestScore: 5))
var scores1 = [GameScore]()
scores1.append(GameScore(homeScore: 1, guestScore: 0))
scores1.append(GameScore(homeScore: 3, guestScore: 4))
scores1.append(GameScore(homeScore: 4, guestScore: 5))
scores1.append(GameScore(homeScore: 7, guestScore: 5))
var scores2 = [GameScore]()
scores2.append(GameScore(homeScore: 1, guestScore: 0))
scores2.append(GameScore(homeScore: 3, guestScore: 4))
scores2.append(GameScore(homeScore: 4, guestScore: 5))
scores2.append(GameScore(homeScore: 7, guestScore: 5))
games.updateValue(scores, forKey: "Dinamo")
games.updateValue(scores1, forKey: "Bars")
games.updateValue(scores2, forKey: "Zenith")

printScores(games: games)

/*:
  ### Задание 2
 Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
  */
func printDays(year: Int, month: Int, day: Int) {
    // constants
    let kDaysInYear = 365
    let kMonthInYear = 30
    let kSecondsInDay = 86400

    // my birthday
    let birthDay = day
    let birthMonth = month
    let birthYear = year
    // today
    let currentDay = 23
    let currentMonth = 6
    let currentYear = 2022

    let yearsILived = currentYear - birthYear + (currentMonth < birthMonth ? -1 : 0)
    let monthILived = yearsILived * kMonthInYear + (currentMonth < birthMonth ? (birthMonth - currentMonth) : (currentMonth - birthMonth))
    let daysILived = yearsILived * kDaysInYear + monthILived * kDaysInYear + (currentDay - birthDay)
    let secondsILived = daysILived * kSecondsInDay

    print("I was born \(birthDay).\(birthMonth).\(birthYear)")
    print("Current date \(currentDay).\(currentMonth).\(currentYear)")
    print("I lived \(yearsILived) years, \(monthILived) moths, \(daysILived) days, \(secondsILived) seconds")
    // wich season
    if birthMonth == 12 || (1 ... 2 ~= birthMonth) {
        print("I was born in winter")
    } else if 3 ... 5 ~= birthMonth {
        print("I was born in spring")
    } else if 6 ... 8 ~= birthMonth {
        print("I was born in summer")
    } else if 9 ... 11 ~= birthMonth {
        print("I was born in autumn")
    }
}

printDays(year: 1990, month: 1, day: 3)

// ### Задание 3
// 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму

enum Bills: Int {
    case bill50 = 50, bill100 = 100, bill200 = 200, bill500 = 500, bill1000 = 1000
}

func calculateMoney(wallet: [Bills: Int]) -> (Int) {
    var result = 0
    for (key, value) in wallet {
        result += key.rawValue * value
    }
    return result
}

var wallet = [Bills: Int]()
wallet.updateValue(10, forKey: Bills.bill50)
wallet.updateValue(10, forKey: Bills.bill100)
wallet.updateValue(10, forKey: Bills.bill200)
wallet.updateValue(10, forKey: Bills.bill500)
wallet.updateValue(10, forKey: Bills.bill1000)

let moneyInWallet = calculateMoney(wallet: wallet)
print("Money in wallet \(moneyInWallet)")

/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */

func isEven(value: Int) -> (Bool) {
    value % 2 == 0
}

print(isEven(value: 5))
/*:
 4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
 */
func isDivyde3(value: Int) -> (Bool) {
    value % 2 == 0
}

print(isDivyde3(value: 6))

/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями

 */
func createArray(x: Int, y: Int) -> ([Int]) {
    var array = [Int]()
    for _ in x ... y {
        array.append(Int.random(in: x ... y))
    }
    return array
}

/*
 4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
  */

var array = createArray(x: 1, y: 100)

/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */

var index = 0

while index < array.count {
    let value = array[index]
    if isEven(value: value) || isDivyde3(value: value) {
        array.remove(at: index)
    }
    index += 1
}

print(array)
/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.

 Например, для года 1905, функция возвратит 20. Для 1899 возвратит 19
 */
func getCentury(year: Int) -> (Int) {
    year / 100 + 1
}
print(getCentury(year: 1998))

/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию


 Пример:
 Входной параметр:
 let n = 6

 Результат: [0, 1, 1, 2, 3, 5]
 */

func getFiboArray (size x: Int) -> ([Int]){
    var array = [Int]()
    for index in 0...x {
        if index < 2 {
            array.append(index)
            continue
        }
        array.append(array[index - 1] + array[index - 2])
    }
    return array
}

print(getFiboArray(size: 6))


//: [Next](@next)
