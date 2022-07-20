import UIKit

/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */

let anyArray: [Any] = [1, 4, 7.4, "sdnnasldj", true, false, 4.5,19,23, 4.56 ]
anyArray.forEach{print($0)}


/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */

print("\n Integers \n")
anyArray.filter{$0 is Int}
    .forEach{print("Integer \($0)")}


print("\n Strings \n")
anyArray.filter{$0 is String}
    .forEach{print("String \($0)")}


print("\n Booleans \n")
anyArray.filter{$0 is Bool}
    .forEach{print("Boolean \($0)")}


print("\n Doubles \n")
anyArray.filter{$0 is Double}
    .forEach{print("Doubles \($0)")}

/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */


print("\n Dictionary \n")

let anyDictionary: [String : Any] = [
    "1" : 2,
    "2" : 23.2,
    "3" : "asdasdsa",
    "4" : 21,
    "5" : 3,
    "6" : false,
    "7" : 23,
    ]

anyDictionary.forEach {print("key:\($0.key) value:\($0.value)") }
/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */

var total = 0.0

anyDictionary.forEach {
    switch $0.value {
    case is Int, is Double:
        total += 1
    case is Bool:
        total += ($0.value as? Bool)! ? 2 : -3
    default:
        break
    }
}

print(total)

/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
total = 0.0
anyDictionary.values.filter{$0 is Int || $0 is Double}
    .forEach{total += $0 is Int ? Double(($0 as? Int)!) : ($0 as? Double)!}
print(total)
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
