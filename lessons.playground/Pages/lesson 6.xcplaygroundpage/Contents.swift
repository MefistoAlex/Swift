//: [Previous](@previous)

import Foundation
//: # Home Work 6

/*:
 ## Задание 1
 1.1 Создайте новый класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 На ваше усмотрение можете создать или не создавать инициализатор
 */


//: 1.2 Создайте экземпляр класса `Orange` с именем `someOrange`

class Orange {
    var color = ""
    var taste = ""
    var radius = 0.0
    var volume = 0.0
    
    
    init(color: String, taste: String, radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }
    func calculateOrangeVolume () -> Double{
        Double(4 / 3) * Double.pi * pow(radius, 3)
    }
}



/*:
 1.3 Проинициализируйте все переменные объекта someOrange следующими значениями:
 
 - `color` — *Orange*
 
 - `taste` — *Sweet*
 
 - `radius` — *95*
 */

let someOrange = Orange(color: "orange", taste: "sweet", radius: 2)



//: 1.4 Выведите на консоль сообщение «Orange has <...> color and <...> taste». Обращайтесь к этим значениям напрямую через экземпляр класса, не создавая для них отдельных переменных
print("Orange has \(someOrange.color) color and \(someOrange.taste) taste")

//: 1.5 Создайте новую константу `orangeVolume` и присвойте ей значение объема апельсина (Число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить). Выведите значение `orangeVolume` на консоль

/*:
 1.6 Дополните класс `Orange` новым свойством `orangeVolume`
 
 1.7 Создайте в классе `Orange` новый метод `calculateOrangeVolume` и перенесите в него расчет объема апельсина
 
 1.8 Вызовите метод calculateOrangeVolume
 */


let orangeVolume = someOrange.calculateOrangeVolume()

print(orangeVolume)



/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими элементами:
 - `name: String`
 - `porductionYear: Int`
 - `horsePower: Int`
 */

struct Car{
    var name: String
    var porductionYear: Int
    var horsePower: Int
}

//: 2.2 Создайте экземпляр структуры `Car` с названием какого либо автомобильного бренда, например `honda`.

var honda = Car(name: "Civic", porductionYear: 2012, horsePower: 120)



//: 2.3 Создайте копию экземпляра `honda`, например, `hondaCivic`

var hondaCivic = honda

//: 2.4 Присвойте новое значение переменной name структуры `hondaCivic`

hondaCivic.name = "new honda"

//: 2.5 Создайте цикл с пятью итерациями, в котором в каждой итерации необходимо увеличивать значение horsePower у структуры hondaCivic на единицу

for _ in 1...5 {
    hondaCivic.horsePower += 1
}

//: 2.6 Выведите значения структур `honda` и `hondaCivic` на консоль в следующем виде: "Мощность двигателя <..> составляет <...> л.с."

print("Engine power of \(honda.name) is \(honda.horsePower) h.p.")
 
print("Engine power of \(hondaCivic.name) is \(hondaCivic.horsePower) h.p.")
/*:
 ## Задание 3
 3.1 Создайте структуру `PlayerInChess`, в которой есть два свойства: `name` с типом `Sting` и `wins` с типом `Int`
 
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства
 
 3.3 Расширьте структуру PlayerInChess методом description, который должен выводить на консоль имя игрока и количество его побед

 3.4 Вызвите данный метод из экземпляра структуры
  */


struct ChessPlayer {
    var name: String
    var wins: Int
    func getDescription() -> String {
        return "\(name) wins \(wins) games"
    }
    mutating func addWins(add: Int) {
        wins += add
    }
}


/*:
3.5 Расширте структуру методом addWins, который должен принимать целочисленное значение и увеличивать количество побед на это значение.

3.6 Вызовите метода addWins из экземпляра структуры, затем вызовите метод description
*/

var player = ChessPlayer(name: "Alex", wins: 23)
player.addWins(add: 5)
print(player.getDescription())


/*:
 ## Задание 4
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    var salary = 0
    var name = ""
    var surname = ""
    
    init(name: String, surname: String, salary: Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}



//: 4.2 Создайте массив из 5 объектов под названием `names` со следующими элементами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` с элементами: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*

let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
var employees = Array<Employee>()
for index in 0..<names.count {
    employees.append( Employee(name: names[index], surname: surnames[index], salary: Int.random(in: 1000...2000)))
}

//: 4.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*

var employeesWithEvalSalary = Array<Employee>(employees)

employees.map{"\($0.name) \($0.surname)'s salary is \($0.salary) "}
        .forEach {print($0)}
//: 4.4 Пройдитесь по массиву `employees` при помощи `for-in` и выведите информацию по каждому объекту в виде: «<имя> <фимилия>’s salary is $<... >»
print("Employees with eval salaries")
employeesWithEvalSalary.filter{$0.salary % 2 == 0}
    .map{"\($0.name) \($0.surname)'s salary is \($0.salary) "}
    .forEach {print($0)}

//: 4.5 Создайте отдельный массив на основании `employees`, который включает только тех работников, зарплата которых чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4


//: [Next](@next)
