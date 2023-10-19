// Tuplas
let http404Error = (404, "Not Found")
// http404Error é do tipo (Int, String) e é igual(404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("O statusCode é \(statusCode)")
print("O statusMessage é \(statusMessage)")

let (justThestatusCode, _) = http404Error
print("O statusCode é \(statusCode)")
print("O statusCode é \(http404Error.0)")
print("O statusMessage é \(http404Error.1)")
let http200Status = (statusCode: 200, description: "OK")
print("O statusCode é \(http200Status.statusCode)")
print("O statusMessage é \(http200Status.description)")

// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)
// convertedNumber é inferido como sendo do tipo "Int?", ou "Int opcional"

// Optionals - nil
var  serverResponseCode: Int? = 404
// serverResponseCode contém um valor Int real de 404
serverResponseCode = nil
// serverResponseCode é automaticamente definido como nil

// Optionals - Forced Unwrapping
if convertedNumber != nil {
    print("convertedNumber contém algum valor inteiro")
}

if convertedNumber != nil {
    print("convertedNumber tem um valor inteiro de \(convertedNumber!).")
}

// Optinals - Optional Binding
if let actualNumber = Int(possibleNumber) {
    print("A string \(possibleNumber) tem um valor inteiro de \(actualNumber)")
} else {
    print("A string \(possibleNumber) não pode ser convertido em um número inteiro")
}
let myNumber = Int(possibleNumber)
// Aqui, myNumber é um inteiro opcional
if let myNumber = myNumber {
    // Aqui, myNumber é um inteiro não opcional
    print("Meu número é \(myNumber)")
}
/*
 A partir do 5.7 pode usar a ortografia mais curta
 if let myNumber {
 print("Meu número é \(myNumber)")
 }
 */
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
        
}
if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
        
}

// Optionals - Unwrapped Optional Implicitamente
let possibleString: String? = "Uma string opcional"
let forcedString: String = possibleString! // requer um ponto de exclamação
let assumedString: String! = "Uma String opcional desempacotada implicitamente"
let implicit: String = assumedString // não precisa de ponto de exclamação
let optionalString = assumedString
// O tipo de optionalString é "String" e assumedString não é desempacotada à força
if assumedString != nil {
    print(assumedString!)
}
if let definiteString = assumedString {
    print(definiteString)
}
