//: [Previous](@previous)

import Foundation
import IOKit

//: # Home Work 7

/*:
 ## Задание 1
 1.1 Создайте класс `Shape` (родительский класс) со следующими свойствами:

 - `height: Float`

 - `width: Float`

 - `radius: Float`

 - `square: Float`

 - `perimeter: Float`

 Oбъявите в классе методы `squareOfShape` и `perimeterOfShape` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте инициализатор для сторон прямоугольника и отдельный инициализатор для радиуса.
 */

/*:
 1.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади или периметра (длины) конкретной фигуры

 1.3 В каждом классе создайте метод `description`, который выводит на консоль сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равна <...>»
 */

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape`, проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения и вызовите у каждого экземпляра класса метод `description`

class Shape {
    let height: Float
    let width: Float
    let radius: Float
    var description: String {
        let figure = type(of: self)
        let squere = String(format: "%.2f", squareOfShape())
        let perimetr = String(format: "%.2f", perimetrOfShape())
        return "The area of \(figure) is \(squere), perimetr is \(perimetr)"
    }

    /// rectangle init
    init(height: Float, wight: Float) {
        self.height = height
        width = wight
        radius = 0.0
    }

    /// circle init
    init(radius: Float) {
        self.radius = radius
        height = 0.0
        width = 0.0
    }

    func squareOfShape() -> Float {
        0.0
    }

    func perimetrOfShape() -> Float {
        0.0
    }
}

class Circle: Shape {
    override init(radius: Float) {
        super.init(radius: radius)
    }

    override func squareOfShape() -> Float {
        Float.pi * radius * radius
    }

    override func perimetrOfShape() -> Float {
        2 * Float.pi * radius
    }
}

class Rectangle: Shape {
    override init(height: Float, wight: Float) {
        super.init(height: height, wight: wight)
    }

    override func squareOfShape() -> Float {
        width * height
    }

    override func perimetrOfShape() -> Float {
        2 * (width + height)
    }
}

class Ellipse: Shape {
    override init(height: Float, wight: Float) {
        super.init(height: height, wight: wight)
    }

    override func squareOfShape() -> Float {
        Float.pi * width * 0.5 * height * 0.5
    }

    override func perimetrOfShape() -> Float {
        Float.pi * ((width + height) * 0.5)
    }
}

let circle = Circle(radius: 12.0)
let squere = Rectangle(height: 10.0, wight: 10.0)
let ellipse = Ellipse(height: 12, wight: 6)

print(circle.description)
print(squere.description)
print(ellipse.description)

/*:
 ## Задание 2

  2.1.

  Спроектировать проигрыватель(класс `AudioPlayer`), в него можно добавить одну или несколько композиций (метод `addCompositions(compositions: [AudioFile])`):
  - композиция (класс или структура `AudioFile`) имеет название, альбом, автора и длительность.

  Проигрыватель может:
  - перемешивать композиции(метод `shuffleCompositions()`)
  - выводить количество песен (свойство `numberOfCompositions`)
  - проигрывать следующую песню (метод `playNext()`), предыдущую (метод `playPrevious()`)
  - при проигрывании  песни выводить в консоль: "Играет композиция с именем <название>(<альбом>). Автор: <автор>",
  - если была  последняя композиция(песня), то при проигрывании следующей(`playNext()`) будет играться первая.
  - если песен нет, то при попытке проигрывания следующей песни или предыдущей выводить: "Композиции не найдены",

  2.2.

  К проигрывателю через USB может быть подключено одно из выходных устройств: Наушники(класс `Headphones`), Колонки(класс `Loudspeakers`).

  Колонки при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "На колонках проигрывается неизвестный звук длительностью <длительность>"

  Наушники при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "В наушниках проигрывается неизвестный звук длительностью <длительность>", где <длительность> - это длительность композиции.

  > Если интерфейс подключения один (USB), то может стоит подключать выходное устройство через протокол?

  2.3.
  Время послушать музыку! Для этого нужно последовательно выполнить действия:

  - Создать объект класса проигрыватель(`AudioPlayer`),
  - Добавить в него 3 любые песни `addCompositions`, пример песни: `AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063)`
  - Проиграть 1 песню (и вспомнить, что выходное устройство не подключено :-))
  - Подключить к проигрывателю колонки `Loudspeakers`.
  - Перемешать песни (метод `shuffleCompositions()`)
  - Проиграть 5 песен через метод `playNext()`.
  - Вместо колонок подключить наушники `Headphones`
  - Проиграть 2 песни.

 */
class AudioFile {
    let name: String
    let album: String
    let author: String
    let duration: Int
    var description: String {
        "Playing composition with name  \"\(name)\" ( \(album) ). Author: \(author)"
    }

    init(name: String, album: String, author: String, duration: Int) {
        self.name = name
        self.album = album
        self.author = author
        self.duration = duration
    }
}

protocol Playable {
    func play(composition: AudioFile)
}

class Loudspeakers: Playable {
    func play(composition: AudioFile) {
        print("On loudspeakers plaing sound, duration: \(composition.duration / 60):\(composition.duration % 60)")
    }
}

class Headphones: Playable {
    func play(composition: AudioFile) {
        print("On headphones plaing sound, duration: \(composition.duration / 60):\(composition.duration % 60)")
    }
}

class AudioPlayer {
    private var compositions: [AudioFile]
    private var currentSongIndex: Int
    private var audioOut: Playable?
    var numberOfCompositions: Int {
        compositions.count
    }

    init() {
        audioOut = nil
        currentSongIndex = 0
        compositions = [AudioFile]()
    }

    func addCompositions(compositions: [AudioFile]) {
        self.compositions += compositions
    }

    func shuffleCompositions() {
        compositions.shuffle()
    }

    func connect(device: Playable) {
        audioOut = device
    }

    func playNext() {
        if compositions.isEmpty {
            print("Audio collection is empty!")
            return
        }
        if currentSongIndex > compositions.count - 2 {
            currentSongIndex = 0
        } else {
            currentSongIndex += 1
        }
        let song = compositions[currentSongIndex]
        if  let audioOut =  audioOut {
            audioOut.play(composition: song)
        }
        print(song.description)
    }

    func playPrev() {
        if compositions.isEmpty {
            print("Audio collection is empty!")
            return
        }
        if currentSongIndex <= 0 {
            currentSongIndex = compositions.count - 1
        } else {
            currentSongIndex -= 1
        }
        let song = compositions[currentSongIndex]
        if  let audioOut =  audioOut {
            audioOut.play(composition: song)
        }
        print(song.description)
    }
}

let audioPlayer = AudioPlayer()
let headphones = Headphones()
let loudspeakers = Loudspeakers()
audioPlayer.addCompositions(compositions: [
        AudioFile(name: "Live wire", album: "To fast for love", author: "Motley Crue", duration: 300),
        AudioFile(name: "Money for nothing", album: "Brothers in arms", author: "Dire Straits", duration: 600),
        AudioFile(name: "KIckstart my heart", album: "Dr. Feelgood", author: "Motley Crue", duration: 450)
])
audioPlayer.playNext()
audioPlayer.connect(device: loudspeakers)
audioPlayer.shuffleCompositions()
audioPlayer.playNext()
audioPlayer.playNext()
audioPlayer.playNext()
audioPlayer.playNext()
audioPlayer.playNext()
audioPlayer.connect(device: headphones)
audioPlayer.playNext()
audioPlayer.playNext()





/// realisation
//2.3. Время послушать музыку! Для этого нужно последовательно выполнить действия:
//
//Создать объект класса проигрыватель(AudioPlayer),
//Добавить в него 3 любые песни addCompositions, пример песни: AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063)
//Проиграть 1 песню (и вспомнить, что выходное устройство не подключено :-))
//Подключить к проигрывателю колонки Loudspeakers.
//Перемешать песни (метод shuffleCompositions())
//Проиграть 5 песен через метод playNext().
//Вместо колонок подключить наушники Headphones
//Проиграть 2 песни.
//: [Next](@next)
