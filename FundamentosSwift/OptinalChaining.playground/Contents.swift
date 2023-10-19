import UIKit

class residence {
    var numberOfRooms = 1
}
class person {
    var residence: residence?
}
let joao = person()

if let roomCount = joao.residence?.numberOfRooms {
    print("A residência do João tem \(roomCount) quarto(s)")
} else {
    print("Não foi possível recuperar o número de quartos.")
}
joao.residence = residence()
if let roomCount = joao.residence?.numberOfRooms {
    print("A residência do João tem \(roomCount) quarto(s)")
} else {
    print("Não foi possível recuperar o número de quartos.")
}
