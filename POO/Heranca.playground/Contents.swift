import UIKit

class Person {
    var age: Int
    var gender: String
    var color: String
    var maritialStatus: String
    
    init(age: Int, gender: String, color: String, maritialStatus: String) {
        self.age = age
        self.gender = gender
        self.color = color
        self.maritialStatus = maritialStatus
    }
    
    func play(sport: String) {
        print("Esporte: \(sport)")
    }
    
    func play(instrument: String) {
        print("Instrumento: \(instrument)")
    }
}

class Men: Person {
}
let andy = Men(age: 20, gender: "Masculino", color: "Branco", maritialStatus: "Solteiro")
print(andy.age)
andy.play(sport: "Não pratica esportes")

class FootballPlayer: Person {
    
    override func play(sport: String) {
        print("Jogador de \(sport)")
    }
}
let footballPlayer = FootballPlayer(age: 35, gender: "Masculino", color: "Branco", maritialStatus: "Casado")
footballPlayer.play(sport: "futebol")

class Pilot: Person {
    override func play(sport: String) {
        print("Piloto de \(sport)")
    }
}
let pilot = Pilot(age: 22, gender: "Masculino", color: "Branco", maritialStatus: "Solteiro")
pilot.play(sport: "Formula 1")

class Rock: Person {
    override func play(instrument: String) {
        print("Toca \(instrument)")
    }
}
let rock = Rock(age: 18, gender: "Feminino", color: "Branco", maritialStatus: "Solteiro")
rock.play(sport: "Não pratica esporte")
rock.play(instrument: "Guitarra")




