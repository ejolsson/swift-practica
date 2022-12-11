import UIKit

/*
 Eric Olsson
 Práctica iOS Swift
 XV Bootcamp Mobile
 11 Dic 2022
 gitHub link: https://github.com/ejolsson/swift-practica.git
*/

// MARK: - #1 100 PRIMEROS

/*
 ES 1.- Calcular y generar una lista con los 100 primeros números primos y hacer un print de los últimos 10.
 EN 1.- Calculate and generate a list with the first 100 prime numbers and print the last 10.
 
 first 100 prime numbers below. 1 is not a prime number.
 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541
*/

var primeList: [Int] = []

func calcPrimes (target: Int) {
    
    for num in 4...target {
        var den = num
        var nonZeroRemainderCount: Int = 0
        
        for den in 2..<num {
//            print("\nRun number: \(num).\(den)")
//            print("num = \(num)")
//            print("den = \(den)")
//            print("Testing: \(num)/\(den)")
            var quotient: Float = Float(num)/Float(den)
//            print("Quoient = \(quotient)")
//            print("remainder = \(num%den)")
//            print("nonZeroRemainderCount: \(nonZeroRemainderCount)")
            
            if num % den == 0 {
                //print("Remainder is zero, not prime)")
                // add num to "notPrime" list
            } else if num % den != 0 {
                //print("remainder is NOT zero, possible prime")
                nonZeroRemainderCount = nonZeroRemainderCount + 1
                //print("nonZeroRemainderCount: \(nonZeroRemainderCount)")
            } else {
                print("something else")
            }
                
            if nonZeroRemainderCount == num-2 {
                print("\(num) is a prime number!")
                primeList.append(num)
                print("primeList = \(primeList)")
                print("primeList.count = \(primeList.count)\n")
            }
        }
    }

}

calcPrimes(target: 20) // NOT PERFORMANT! :(, do not recommend using large numbers. Not able to reach 100 primes
// found more performant solution in section below
primeList
primeList.count

// MARK: - #2

/*
 ES 2.- Calcular la suma de los primeros 50 números primos y hacer un print del resultado.
 EN 2.- Calculate the sum of the first 50 prime numbers and print the result.
 Expected answer: 5117
 First 50 primes: 2 + 3 + 5 + 7 + 11 + 13 + 17 + 19 + 23 + 29 + 31 + 37 + 41 + 43 + 47 + 53 + 59 + 61 + 67 + 71 + 73 + 79 + 83 + 89 + 97 + 101 + 103 + 107 + 109 + 113 + 127 + 131 + 137 + 139 + 149 + 151 + 157 + 163 + 167 + 173 + 179 + 181 + 191 + 193 + 197 + 199 + 211 + 223 + 227 + 229
 */

func primes(upTo rangeEndNumber: Int) -> [Int] {
    let firstPrime = 2
    guard rangeEndNumber >= firstPrime else {
        fatalError("End of range has to be greater than or equal to \(firstPrime)!")
    }
    var numbers = Array(firstPrime...rangeEndNumber)
    var currentPrimeIndex = 0
    var primeCount: Int = 0

    while currentPrimeIndex < numbers.count { // logic credit: https://stackoverflow.com/questions/55385273/prime-numbers-print-from-range-2-100
        let currentPrime = numbers[currentPrimeIndex]
        var numbersAfterPrime = numbers.suffix(from: currentPrimeIndex + 1)
        
        numbersAfterPrime.removeAll(where: { $0 % currentPrime == 0 })
        numbers = numbers.prefix(currentPrimeIndex + 1) + Array(numbersAfterPrime)

        currentPrimeIndex += 1
        primeCount += 1
        numbers.count
    }
    return numbers
}

func printLastTenPrimes (rangeOfLast: Int, lastPrimeIndex: Int) {
    let firstOfRange: Int = lastPrimeIndex - rangeOfLast
    for n in firstOfRange..<lastPrimeIndex {
        print("\(bigPrimelist[n])")
    }
}

var bigPrimelist = primes(upTo: 542) // use 230 to get first 50 primes
bigPrimelist.count

print("\n\n1° Calculate and generate a list with the first 100 prime numbers and print the last 10. \n")

let primeCount: Int = bigPrimelist.count
print("First 100 primes: \(bigPrimelist)")
printLastTenPrimes(rangeOfLast: 10, lastPrimeIndex: primeCount)

// #2

var smallPrimeList = primes(upTo: 230)
smallPrimeList
smallPrimeList.count

func sumFirstPrimes (target: Int) {
    var sum: Int = 0
    for i in 1...target {
        sum = sum + smallPrimeList[i-1]
    }
    print("Sum of fist 50 prime numbers = \(sum)")
}

print("\n\n2° Calculate the sum of the first 50 prime numbers and print the result. \n")
sumFirstPrimes(target: 50)


// MARK: - #3

/*
 ES 3.- Dada la siguiente lista, obtener todos los elementos que contengan más de dos vocales:
val players: [String] = [“Vinicius”, “Messi”, “Ronaldo”, “Pedri”, “Mbappe”, “Modric”, “Militao”, “Morata”, “Valverde”, “Benzema”, “Piqué” ]
 EN 3.- Given the following list, obtain all the elements that contain more than two vowels:
val players: [String] = [“Vinicius”, “Messi”, “Ronaldo”, “Pedri”, “Mbappe”, "Modric", "Militao", "Morata", "Valverde", "Benzema", "Piqué" ]

 Requirement understood
*/

let players: [String] = ["Vinicius", "Messi", "Ronaldo", "Pedri", "Mbappe", "Modric", "Militao", "Morata", "Valverde", "Benzema", "Piqué"]
let vowels: [String] = ["a","e","i","o","u", "á", "é", "í", "ó", "ú"]
var playersWithThreeVowels: [String] = []

players.forEach { player in // loop through each player
    //print("\nPlayer evaluated: \(player)")
    let playerName = String(player)
    var vowelCount: Int = 0
    
    player.forEach { letter in // loop through each letter in player name
        //print("Player = \(player), Character = \(letter)")
        if letter == "a" || letter == "á" || letter == "e" || letter == "é" || letter == "i" || letter == "í" || letter == "o" || letter == "ó" || letter == "u" || letter == "ú" {
            //print("\(player) has a vowel")
            vowelCount += 1
            //print("\(player) vowel = \(vowelCount)")
        }
        //print("\n\nPlayers with 3 vowels include: \(playersWithThreeVowels)")
    }
    
    if vowelCount > 2 {
        playersWithThreeVowels.append(player)
    }
}

print("\n\n3° Given the following list, obtain all the elements that contain more than two vowels")
print("\nPlayers with 3 vowels include: \(playersWithThreeVowels)\n\n")


// MARK: - #4

/*
 ES 4.- Crear un enumerado que permita indicar la posición en el campo de un jugador de fútbol, por ejemplo: Portero, Lateral Derecho, Central, Lateral Izquierdo, Mediocentro, Extremo Derecha, Extremo Izquierda, Delantero, etc
 EN 4.- Create a list that allows to indicate the position in the field of a soccer player, for example: Goalkeeper, Right Side, Central, Left Side, Midfielder, Right Winger, Left Winger, Forward, etc.
 */

enum PlayerPosition {
    case Portero
    case LateralDerecho
    case LateralIzquierdo
    case CentroDeLaEspalda
    case DefensaCentral
    case MediocampistaDefensivo
    case CentrocampistaDerecho
    case MediocampistaCentral
    case DelanteroCentro
    case MediocampistaOfensivo
    case CentrocampistaIzquierdo
}


// MARK: - #5

/*
 ES 5.- Crear una clase, con los atributos necesarios, para representar a los miembros que participan en una selección del mundial y un enumerado que los diferencie por tipo, por ejemplo: Jugador, Seleccionador, Médico, etc.
 
 EN 5.- Create a class, with the necessary attributes, to represent the members that participate in a World Cup team and a list that differentiates them by type, for example: Player, Coach, Doctor, etc.
 */

class WorldCupTeamRoster {
    var teamName: String = ""
    var jugador: String = ""
    var seleccionador: String = ""
    var medico: String = ""
    var gerente: String = ""
    var gerenteDeEquipo: String = ""
    var entrenador: String = ""
    
    init (teamName: String, jugador: String, seleccionadar: String, medico: String, gerente: String, gerenteDeEquipo: String) {
        self.teamName = teamName
        self.jugador = jugador
        self.seleccionador = seleccionadar
        self.medico = medico
        self.gerente = gerente
        self.gerenteDeEquipo = gerenteDeEquipo
        //self.entrenador = entrenador
    }
}


// MARK: - #6

/*
 ES 6.- Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.
 EN 6.- Create the necessary classes, with the minimum attributes, to represent the soccer teams of the 2022 World Cup,
    for example: A class that represents the World Cup, we will need it to contain a
        list of Teams, each team will have its
        attributes, such as name, country, players, coach, etc.
*/

class WorldCupTeam {
    var teamID: Int = 0
    var teamName: String = ""
    var pais: String = ""
    var jugadores: String = ""
    var seleccionador: String = ""
    //var initialDraw: Int = 0
    
    init (teamID: Int = 0, teamName: String) { //}, initialDraw: Int) {
        self.teamID = teamID
        self.teamName = teamName
        //self.initialDraw = initialDraw
    }
}
