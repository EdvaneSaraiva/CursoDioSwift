import UIKit

class Person {
    var age: Int!
    var gender: String!
    var color: String!
    var maritalStatus: String!
}

class BehaviorPerson {
    var age: Int!
    var gender: String!
    var color: String!
    var maritalStatus: String!
    
    func play(sport: String) {
        // Escreva aqui como sua instância da pessoairá jogar
    }
}
class Wall {
    init() {
        // execute a inicialização
    }
}

class WhiteWall {
    var length: Double
    
    init() {
        length = 5.5
        print("Criamos o objeto Wall.")
        print("Length = ", length)
    }
}

var whiteWall = WhiteWall()

class BlackWall {
    var length: Double
    
    init(length: Double) {
        self.length = length
        print("Length = ", length)
    }
}

var blackWall = BlackWall(length: 10.5)

class Longwall{
    var length: Double
    var height: Double
    
    init(length: Double, height: Double) {
        self.length = length
        self.height = height
        print("A área é \(calculateArea())")
    }
    
    func calculateArea() -> Double {
        return length * height
    }
}
var longWall1 = Longwall(length: 20.5, height: 8.6)
var longWall2 = Longwall(length: 8.5, height: 6.3)

class PersonAge {
    var age: Int
    
    init() {
        age = 20
    }
    init(age: Int) {
        self.age = age
    }
    
    func getAge() -> Int {
        return age
    }
}
var personAge1 = PersonAge()
print("Person 1 Age:", personAge1.getAge())
var personAge2 = PersonAge(age: 23)
print("Person 2 Age:", personAge2.getAge())

class University {
    var name: String
    var rank: String
    
    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }
    
    convenience init() {
        self.init(name: "Universadade de São Paulo", rank: "1˚")
    }
}
var university = University()
print(university.name)
print("Rank: ", university.rank)

class File {
    var folder: String
    
    init?(folder: String) {
        if folder.isEmpty {
            print("Folder Not Found")
            return nil
        }
        self.folder = folder
    }
}
var file = File(folder: "")
if file != nil {
    print("Arquivo encontrado com sucesso!!!")
} else {
    print("Erro ao buscar o arquivo")
}

struct PersonStruct {
    var name: String
    var age: Int
}
var personStruct = PersonStruct(name: "Pedro", age: 43)
print("Nome: ", personStruct.name)
print("Idade: ", personStruct.age)






