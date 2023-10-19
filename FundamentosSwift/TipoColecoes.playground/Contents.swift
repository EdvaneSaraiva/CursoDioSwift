import UIKit

var someInts: [Int] = []
print("someInts é do tipo [Int] com \(someInts.count) intes.")

someInts.append(3)
someInts = []

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Ovos", "Leite"]
print("A lista de compras contém \(shoppingList.count) itens.")

if shoppingList.isEmpty {
    print("A lista de compras está vazia.")
} else {
    print("A lista de compras não está vazia.")
}

shoppingList.append("Farinha")
shoppingList += ["Fermento em pó"]
shoppingList += ["Pasta de chocolate","Queijo", "Manteiga"]

var firstItem = shoppingList[0]

shoppingList[0] = "Seis ovos"
//shoppingList[shoppingList.count] = "Sal" ---- Não pode ser feito - Erro de execução

shoppingList[4...6] = ["Bananas", "Maças"]
print(shoppingList)

shoppingList.insert("Xarope de bordo", at: 0)
print(shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)
//print(shoppingList)
//print(mapleSyrup)

firstItem = shoppingList[0]

let apple = shoppingList.removeLast()

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

var letters = Set<Character>()
print("letters é do tipo Set<Character> com \(letters.count) itens.")
letters.insert("a")
letters = []

var favoriteGenres: Set<String> = ["Rock", "Clásico", "Hip Hop"]
var newFavoriteGenres: Set = ["Rock", "Clásico", "Hip Hop"]

print("Eu tenho \(favoriteGenres.count) gêneros musicais favoritos.")

if favoriteGenres.isEmpty {
    print("No que diz respeito à música, não sou exigente.")
}
else {
    print("Tenho preferências musicais particulares.")
}
favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? eu superei.")
} else {
    print("Eu nunca me importei muito com isso.")
}

if favoriteGenres.contains("Funk") {
    print("Eu me levanto com o pé bom.")
} else {
    print("Está muito badalado aqui.")
}

// Por não ter funk no array apresenta a segunda frase.

print("Sem ordenação:")
for genre in favoriteGenres {
    print("\(genre)")
}

print("Ordenado:")
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

print(favoriteGenres.count)

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitsPrimeNumber: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitsPrimeNumber).sorted()
oddDigits.symmetricDifference(singleDigitsPrimeNumber).sorted()

let houseAnimals: Set = ["Cachorro", "Gato"]
let farmAnimals: Set = ["Vaca", "Galinha", "Ovelha", "Cachorro", "Gato"]
let cityAnimals: Set = ["Pombo", "Rato"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)


// Dictionary<Key, Value>
// Dictionary<String, Int>

// [Key: Value]
// [String: Int]

var namesOfIntegers: [Int: String] = [:]
namesOfIntegers[16] = "dezesseis"
namesOfIntegers = [:]

var airpoints: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var literalAirpoints = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("O dicionário de aeroportos contém \(airpoints.count) itens.")

if airpoints.isEmpty {
    print("O dicionário de aeroportos está vazio.")
} else {
    print("O dicionário de aeroportos não está vazio.")
}

airpoints["LHR"] = "London"

airpoints["LHR"] = "London Heathrow"

if let oldValue = airpoints.updateValue("Dublin Airpoint", forKey: "DUB") {
    print("O valor antigo para DUB era \(oldValue)")
}

if let airpointName = airpoints["DUB"] {
    print("O nome do aeroporto é \(airpointName)")
} else {
    print("Esse aeroporto não está no dicionário de aeroportos")
}

airpoints["APL"] = "Apple International"
// print(airpoints)
airpoints["APL"] = nil
// print(airpoints)

if let removeValue = airpoints.removeValue(forKey: "DUB") {
    print("O nome do aeroporto removido é \(removeValue)")
} else {
    print("O dicionário de aeroportos não contém um valor para DUB.")
}
    
for (airportCode, airportName) in airpoints {
    print("\(airportCode): \(airportName)")
}

for airportCode in airpoints.keys {
    print("Código do aeroporto: \(airportCode)")
}

for airportName in airpoints.values {
    print("Nome do aeroporto: \(airportName)")
}

let airportCodes = [String](airpoints.keys)
let airportNames = [String](airpoints.values)

