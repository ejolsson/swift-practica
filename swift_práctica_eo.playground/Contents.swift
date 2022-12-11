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

// MARK: - #7

/*
 ES 7.- Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido:
 Partido: España 3 - 1 Brasil
 EN 7.- Create a class to represent the matches between teams, it must contain attributes such as home team, away team and result as a minimum. Generate a random list of matches from the list of previous teams and make a print of this style per match: Match: Spain 3 - 1 Brazil

 ES 8.- Generar de forma aleatoria, dentro de la clase Mundial, un listado de grupos con un máximo de 4 selecciones por grupo, se puede crear una clase nueva Grupo que contenga el nombre del grupo, listado de participantes y listado de partidos. Por ejemplo: Grupo A España, Brasil, Francia, Alemania.
 EN 8.- Generate randomly, within the World class, a list of groups with a maximum of 4 teams per group, you can create a new Group class that contains the name of the group, list of participants and list of matches. For example: Group A Spain, Brazil, France, Germany.
 */

protocol PlayMatchDelegate: AnyObject { // https://docs.swift.org/swift-book/LanguageGuide/Protocols.html
    // func fm class Match
    func playMatch (homeTeam: String, awayTeam: String) -> (String, String, Int, String, Int)
    
    // func fm class Group
    
}

protocol RoundRobin: AnyObject {
    func randomMatches(teamsToRandomize: [String], numberOfMatches: Int)
}

protocol PointKeeper: AnyObject {
    
}

// How to split an array into chunks. extension Array credit: https://www.hackingwithswift.com/example-code/language/how-to-split-an-array-into-chunks
public extension Array { // supports Group divideTeams function
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

class Team {
    var teamId: Int = 0
    var teamName: String = ""
    public var teamPoints: Int = 0 // for tourney scoring, used for 9°
    
    init(teamId: Int = 0, teamName: String) {
        self.teamId = teamId
        self.teamName = teamName
    }
}

class Group {
    var groupId: Int = 0
    var groupName: String = ""
    var groupTeams: [String]? = []
    weak var delegate: RoundRobin?
    
    init(groupId: Int, groupName: String) {
        self.groupName = groupName
    }
    
    func printGroupName(groupName: String) {
        print("Group Name is Group \(groupName)")
    }
    
    func assignTeamsToGroup () {
        // see TODO: loop group bucket assignments
    }
    
    func roundRobinWithinGroup () {
        print("\nStarting Round Robin for \(self.groupName): \(self.groupTeams!)")

        delegate?.randomMatches(teamsToRandomize: self.groupTeams ?? ["Brazil", "Germany", "Netherlands", "England"], numberOfMatches: 6)

        print("End Round Robin: \(self.groupName)")
    }
    
    // matches within each Group
    func innerGroupMatch () {
        var homeTeam = groupTeams?.randomElement()
        var awayTeam = groupTeams?.randomElement()
        // TODO: Replace func below (used b/c delegate not working...)
        
        func playInnerGroupMatch (homeTeam: String, awayTeam: String) -> (String, String, Int, Int, String, Int, Int) {
            print("Home team: \(homeTeam)")
            let homeTeamScore = Int.random(in: 0...3)
            print("Home team score: \(homeTeamScore)")
            var homeTeamAwardPoints: Int = 0
            
            print("Away team: \(awayTeam)")
            let awayTeamScore = Int.random(in: 0...3)
            print("Away team score: \(awayTeamScore)")
            var awayTeamAwardPoints: Int = 0
            
            var winner: String = ""
            let winnerAwardPoints: Int = 3
            let drawAwardPoints: Int = 1
            
            if homeTeamScore > awayTeamScore {
                winner = homeTeam
                homeTeamAwardPoints = winnerAwardPoints
                // delgate out score updater
            } else if homeTeamScore < awayTeamScore {
                winner = awayTeam
                awayTeamAwardPoints = winnerAwardPoints
            } else {
                winner = "Tie game"
                homeTeamAwardPoints = drawAwardPoints
                homeTeamAwardPoints = drawAwardPoints
            }
            
            print("\(homeTeam) \(homeTeamScore) - \(awayTeam) \(awayTeamScore)")
            
            return (winner, homeTeam, homeTeamScore, homeTeamAwardPoints, awayTeam, awayTeamScore, awayTeamAwardPoints)
        }
        playInnerGroupMatch(homeTeam: homeTeam ?? "USA", awayTeam: awayTeam ?? "Mexico")
    }
    
    func awardPoints() {
        // TODO: award and record points
        /*
         EN 9.- To add the points of each team to each Group, it will be necessary to
         count the victories with 3 points, draws with 1 and losses with 0.
         Add a function in the Group class that we pass on a selection and it returns its points.
         */
    }
}

class World: RoundRobin {
    var year: Int = 0
    weak var delegate: PlayMatchDelegate?
    
    init(year: Int) {
        self.year = year
    }
    
    func randomMatches(teamsToRandomize: [String], numberOfMatches: Int) { // #7 item
        //print("test")
        print("Random Matches: \(numberOfMatches)")
        var shuffledMatches: [String] = teamsToRandomize.shuffled() // https://developer.apple.com/documentation/swift/array/shuffle()

        for n in 1...numberOfMatches {
            var homeTeam = shuffledMatches.randomElement()
            var awayTeam = shuffledMatches.randomElement()
                        
            // TODO: Replace func below (used b/c delegate not working...)
            // also see class Group > func innerGroupMatch > func playInnerGroupMatch
            // this fuction used in production
            func playRandom (homeTeam: String, awayTeam: String) -> (String, String, Int, Int, String, Int, Int) {
                let homeTeamScore = Int.random(in: 0...3)
                var homeTeamAwardPoints: Int = 0
                let awayTeamScore = Int.random(in: 0...3)
                var awayTeamAwardPoints: Int = 0
                var winner: String = ""
                let winnerAwardPoints: Int = 3
                let drawAwardPoints: Int = 1
                
                if homeTeamScore > awayTeamScore {
                    winner = homeTeam
                    homeTeamAwardPoints = winnerAwardPoints
                    // delgate out score updater
                } else if homeTeamScore < awayTeamScore {
                    winner = awayTeam
                    awayTeamAwardPoints = winnerAwardPoints
                } else {
                    winner = "Tie game"
                    homeTeamAwardPoints = drawAwardPoints
                    homeTeamAwardPoints = drawAwardPoints
                }
                
                print("Random match #\(n): \(homeTeam) \(homeTeamScore) - \(awayTeam) \(awayTeamScore)")
                
                return (winner, homeTeam, homeTeamScore, homeTeamAwardPoints, awayTeam, awayTeamScore, awayTeamAwardPoints)
            }
            playRandom(homeTeam: homeTeam ?? "USA", awayTeam: awayTeam ?? "Mexico")
            //delegate?.playMatch (homeTeam: homeTeam ?? "USA", awayTeam: awayTeam ?? "Mexico")

        }
    }
    
    func divideTeams (teamsToDivide: [String]) -> [[String]] {
        var teamsShuffled = teamsToDivide
        
        teamsShuffled.shuffle() // https://developer.apple.com/documentation/swift/array/shuffle()
        //print("\n\nTeams to divide: \(teamsToDivide)\n") // for debug
        //print("Shuffled teams: \(teamsShuffled)\n") // for debug
        
        let teamsDivided = teamsShuffled.chunked(into: 4)
        let group1: [String] = teamsDivided[0]
        
        print("Group 1 teams: \(group1)\n")
        let group2: [String] = teamsDivided[1]
        print("Group 2 teams: \(group2)\n")
        let group3: [String] = teamsDivided[2]
        print("Group 3 teams: \(group3)\n")
        let group4: [String] = teamsDivided[3]
        print("Group 4 teams: \(group4)\n")
        let group5: [String] = teamsDivided[4]
        print("Group 5 teams: \(group5)\n")
        let group6: [String] = teamsDivided[5]
        print("Group 6 teams: \(group6)\n")
        let group7: [String] = teamsDivided[6]
        print("Group 7 teams: \(group7)\n")
        let group8: [String] = teamsDivided[7]
        print("Group 8 teams: \(group8)\n")
        
        let divisonBundle: Array = [teamsDivided]
        return teamsDivided
    }
}

class Match: PlayMatchDelegate {
    var homeTeam: String
    var awayTeam: String
    var winner: String = ""
    
    init(homeTeam: String, awayTeam: String) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
    }
    
    func playMatch (homeTeam: String, awayTeam: String) -> (String, String, Int, String, Int) {
        print("Hi")
        print("Home team: \(homeTeam)")
        let homeTeamScore = Int.random(in: 0...3)
        print("Home team score: \(homeTeamScore)")
        print("Away team: \(awayTeam)")
        let awayTeamScore = Int.random(in: 0...3)
        print("Away team score: \(awayTeamScore)")
        var winner: String = ""
        
        if homeTeamScore > awayTeamScore {
            winner = homeTeam
        } else if homeTeamScore < awayTeamScore {
            winner = awayTeam
        } else {
            winner = "Tie game"
        }
        
        print("\(homeTeam) \(homeTeamScore) - \(awayTeam) \(awayTeamScore)")
        
        return (winner, homeTeam, homeTeamScore, awayTeam, awayTeamScore)
    }
}



// MARK: EXECUTION

// Create teams (instantiate Team class)
let argentina: Team   = Team(teamId: 0, teamName: "Argentina")
let australia: Team   = Team(teamId: 1, teamName: "Australia")
let belgium: Team     = Team(teamId: 2, teamName: "Belgium")
let brazil: Team      = Team(teamId: 3, teamName: "Brazil")
let cameroon: Team    = Team(teamId: 4, teamName: "Cameroon")
let canada: Team      = Team(teamId: 5, teamName: "Canada")
let costaRica: Team   = Team(teamId: 6, teamName: "Costa Rica")
let croatia: Team     = Team(teamId: 8, teamName: "Croatia")
let denmark: Team     = Team(teamId: 9, teamName: "Denmark")
let ecuador: Team     = Team(teamId: 10, teamName: "Ecuador")
let england: Team     = Team(teamId: 11, teamName: "England")
let france: Team      = Team(teamId: 12, teamName: "France")
let germany: Team     = Team(teamId: 13, teamName: "Germany")
let ghana: Team       = Team(teamId: 14, teamName: "Ghana")
let iran: Team        = Team(teamId: 15, teamName: "Iran")
let japan: Team       = Team(teamId: 16, teamName: "Japan")
let mexico: Team      = Team(teamId: 17, teamName: "Mexico")
let morocco: Team     = Team(teamId: 18, teamName: "Morocco")
let netherlands: Team = Team(teamId: 19, teamName: "Netherlands")
let poland: Team      = Team(teamId: 20, teamName: "Poland")
let portugal: Team    = Team(teamId: 21, teamName: "Portugal")
let qatar: Team       = Team(teamId: 22, teamName: "Qatar")
let saudiArabia: Team = Team(teamId: 23, teamName: "Saudi Arabia")
let senegal: Team     = Team(teamId: 24, teamName: "Senegal")
let serbia: Team      = Team(teamId: 25, teamName: "Serbia")
let southKorea: Team  = Team(teamId: 26, teamName: "South Korea")
let spain: Team       = Team(teamId: 27, teamName: "Spain")
let switzerland: Team = Team(teamId: 28, teamName: "Switzerland")
let tunisia: Team     = Team(teamId: 29, teamName: "Tunisia")
let uruguay: Team     = Team(teamId: 30, teamName: "Uruguay")
let usa: Team         = Team(teamId: 31, teamName: "USA")
let wales: Team       = Team(teamId: 32, teamName: "Wales")

var teamNames: [String] = [argentina.teamName, australia.teamName, belgium.teamName, brazil.teamName, cameroon.teamName, canada.teamName, costaRica.teamName, croatia.teamName, denmark.teamName, ecuador.teamName, england.teamName, france.teamName, germany.teamName, ghana.teamName, iran.teamName, japan.teamName, mexico.teamName, morocco.teamName, netherlands.teamName, poland.teamName, portugal.teamName, qatar.teamName, saudiArabia.teamName, senegal.teamName, serbia.teamName, southKorea.teamName, spain.teamName, switzerland.teamName, tunisia.teamName, uruguay.teamName, usa.teamName, wales.teamName]

// Create groups (instantiate Group class)
let groupA: Group = Group(groupId: 0, groupName: "Group A")
let groupB: Group = Group(groupId: 1, groupName: "Group B")
let groupC: Group = Group(groupId: 2, groupName: "Group C")
let groupD: Group = Group(groupId: 3, groupName: "Group D")
let groupE: Group = Group(groupId: 4, groupName: "Group E")
let groupF: Group = Group(groupId: 5, groupName: "Group F")
let groupG: Group = Group(groupId: 6, groupName: "Group G")
let groupH: Group = Group(groupId: 7, groupName: "Group H")
let groupNames: [String] = [groupA.groupName, groupB.groupName, groupC.groupName, groupD.groupName, groupE.groupName, groupF.groupName, groupG.groupName, groupH.groupName]
let groupClasses: [AnyObject] = [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH]


// Create WorldCup, divide teams into groups
let world2022: World = World(year: 2022)
groupA.delegate = world2022 // this instance of Group needs to exe a delegated func
groupB.delegate = world2022
groupC.delegate = world2022
groupD.delegate = world2022
groupE.delegate = world2022
groupF.delegate = world2022
groupG.delegate = world2022
groupH.delegate = world2022
//world2022.delegate = groupA
//world2022.delegate = groupB
//world2022.delegate = groupC
//world2022.delegate = groupD
//world2022.delegate = groupE
//world2022.delegate = groupF
//world2022.delegate = groupG
//world2022.delegate = groupH

print("\n\n7° Generate a random list of matches from the list of previous teams and make a print of this style per match: Match: Spain 3 - 1 Brazil\n")

world2022.randomMatches(teamsToRandomize: teamNames, numberOfMatches: 8)

teamNames // for debugging purposes

let drawBuckets: [[String]] = world2022.divideTeams(teamsToDivide: teamNames) // note reshuffle

print("\n\n8° Generate randomly, within the World class, a list of groups with a maximum of 4 teams per group. For example: Group A Spain, Brazil, France, Germany. \n")

groupClasses[1] // for debugging

// TODO: loop group bucket assignments
groupClasses.forEach { Group in
    //print("\(Group.)")
}

groupA.groupTeams = drawBuckets[0]
print("Group A teams: \(groupA.groupTeams!)")
groupB.groupTeams = drawBuckets[1]
print("Group B teams: \(groupB.groupTeams!)")
groupC.groupTeams = drawBuckets[2]
print("Group C teams: \(groupC.groupTeams!)")
groupD.groupTeams = drawBuckets[3]
print("Group D teams: \(groupD.groupTeams!)")
groupE.groupTeams = drawBuckets[4]
print("Group E teams: \(groupE.groupTeams!)")
groupF.groupTeams = drawBuckets[5]
print("Group F teams: \(groupF.groupTeams!)")
groupG.groupTeams = drawBuckets[6]
print("Group G teams: \(groupG.groupTeams!)")
groupH.groupTeams = drawBuckets[7]
print("Group H teams: \(groupH.groupTeams!)")

teamNames
groupA.groupTeams
groupA.innerGroupMatch()

print("\n\n9° To add the points of each team to each Group, victories = 3 pts, draws = 1pt, losses = 0. Add a function in the Group class that we pass on a selection and it returns its points. \n")

groupA.roundRobinWithinGroup()
groupB.roundRobinWithinGroup()
groupC.roundRobinWithinGroup()
groupD.roundRobinWithinGroup()
groupE.roundRobinWithinGroup()
groupF.roundRobinWithinGroup()
groupG.roundRobinWithinGroup()
groupH.roundRobinWithinGroup()

argentina.teamPoints
australia.teamPoints
belgium.teamPoints
brazil.teamPoints
cameroon.teamPoints
canada.teamPoints
costaRica.teamPoints
croatia.teamPoints
denmark.teamPoints
ecuador.teamPoints
england.teamPoints
france.teamPoints
germany.teamPoints
ghana.teamPoints
iran.teamPoints
japan.teamPoints
mexico.teamPoints
morocco.teamPoints
netherlands.teamPoints
poland.teamPoints
portugal.teamPoints
qatar.teamPoints
saudiArabia.teamPoints
senegal.teamPoints
serbia.teamPoints
southKorea.teamPoints
spain.teamPoints
switzerland.teamPoints
tunisia.teamPoints
uruguay.teamPoints
usa.teamPoints
wales.teamPoints

//groupA.delegate

/*
 ES 9.- Para añadir a cada Grupo los puntos de cada selección habrá que contabilizar las victorias con 3 puntos, empates con 1 y derrotas con 0. Añadir una función en la clase Grupo que le pasemos una selección y nos devuelva sus puntos.
 EN 9.- To add the points of each team to each Group, it will be necessary to
 count the victories with 3 points, draws with 1 and losses with 0.
 Add a function in the Group class that we pass on a selection and it returns its points.

if Teams winner -> add 3 pts
 tie -> add 1 pt
 
 Output:
 
 */

//func awardMatchPoints () {
//    var team1 =
//    if team
//}

// MARK: - #10

/*
 ES 10.- Generar los partidos del Mundial en cada grupo y calcular las dos primeras selecciones de cada grupo y hacer un print con los clasificados.
 EN 10.- Generate the World Cup matches in each group and
 calculate the first two teams in each group and
 make a print with the qualifiers.
 
 */
