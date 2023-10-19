
// Constante e Variável
let firstName = "Steve"
var secondName: String? = "Jobs"

// Imprimindo valores
print("O nome completo é \(firstName) \(secondName ?? "Wozniak")")
if let secondName = secondName {
    print("O nome completo é \(firstName) \(secondName)")
}

