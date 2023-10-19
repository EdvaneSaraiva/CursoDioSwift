// Inteiros
let minValue = UInt.min // minValue é igual a 0 e é do tipo UInt8
let maxValue = UInt.max // maxValue é igual a 255 e é do tipo UInt8

// Type Safety e Type Inference
let meaningOfLife = 42
// meaningOfLife é inferido como sendo do tipo Int
let pi = 3.14159
// pi é inferido como sendo do tipo Double
let anotherPi = 3 + 0.14159

// Literais Númericos
let DecimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Type Aliases
typealias AudioSample = UInt16
var maxAplitudeFound = AudioSample.min
print(maxAplitudeFound)
// maxAplitudeFound agora é 0

//Booleanos
let orangesAreOrange = true
let turnipsAreDelicius = false
if turnipsAreDelicius {
    print("Mmm, nabos saborosos!")
} else {
    print("Eww, nabos são horríveis!")
}
let i = 1
// if i {
    // este exemplo não será compilado e relatará um erro
//}
let j = 1
if j == 1 {
    // este exemplo irá compilar com sucesso
}
