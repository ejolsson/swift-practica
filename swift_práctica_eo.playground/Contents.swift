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


// MARK: - #2

/*
 ES 2.- Calcular la suma de los primeros 50 números primos y hacer un print del resultado.
 EN 2.- Calculate the sum of the first 50 prime numbers and print the result.
 Answer: 5117
 First 50 primes: 2 + 3 + 5 + 7 + 11 + 13 + 17 + 19 + 23 + 29 + 31 + 37 + 41 + 43 + 47 + 53 + 59 + 61 + 67 + 71 + 73 + 79 + 83 + 89 + 97 + 101 + 103 + 107 + 109 + 113 + 127 + 131 + 137 + 139 + 149 + 151 + 157 + 163 + 167 + 173 + 179 + 181 + 191 + 193 + 197 + 199 + 211 + 223 + 227 + 229
 */


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
print("\n\nPlayers with 3 vowels include: \(playersWithThreeVowels)")

players.forEach { player in // loop through each player
   
    print("\nPlayer evaluated: \(player)")
    
    let playerName = String(player)
    var vowelCount: Int = 0
    
    player.forEach { letter in // loop through each letter in player name
        
        print("Player = \(player), Character = \(letter)")
        
        if letter == "a" || letter == "á" || letter == "e" || letter == "é" || letter == "i" || letter == "í" || letter == "o" || letter == "ó" || letter == "u" || letter == "ú" {
            print("\(player) has a vowel")
            vowelCount += 1
            print("\(player) vowel = \(vowelCount)")
        }
        
        //print("\n\nPlayers with 3 vowels include: \(playersWithThreeVowels)")
    }
    
    if vowelCount > 2 {
        playersWithThreeVowels.append(player)
    }
}

print("\n\nPlayers with 3 vowels include: \(playersWithThreeVowels)\n\n")


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

let argentina: WorldCupTeam   = WorldCupTeam(teamID: 1, teamName: "Argentina")
let australia: WorldCupTeam   = WorldCupTeam(teamID: 2, teamName: "Australia")
let belgium: WorldCupTeam     = WorldCupTeam(teamID: 3, teamName: "Belgium")
let brazil: WorldCupTeam      = WorldCupTeam(teamID: 4, teamName: "Brazil")
let cameroon: WorldCupTeam    = WorldCupTeam(teamID: 5, teamName: "Cameroon")
let canada: WorldCupTeam      = WorldCupTeam(teamID: 6, teamName: "Canada")
let costaRica: WorldCupTeam   = WorldCupTeam(teamID: 7, teamName: "Costa Rica")
let croatia: WorldCupTeam     = WorldCupTeam(teamID: 8, teamName: "Croatia")
let denmark: WorldCupTeam     = WorldCupTeam(teamID: 9, teamName: "Denmark")
let ecuador: WorldCupTeam     = WorldCupTeam(teamID: 10, teamName: "Ecuador")
let england: WorldCupTeam     = WorldCupTeam(teamID: 11, teamName: "England")
let france: WorldCupTeam      = WorldCupTeam(teamID: 12, teamName: "France")
let germany: WorldCupTeam     = WorldCupTeam(teamID: 13, teamName: "Germany")
let ghana: WorldCupTeam       = WorldCupTeam(teamID: 14, teamName: "Ghana")
let iran: WorldCupTeam        = WorldCupTeam(teamID: 15, teamName: "Iran")
let japan: WorldCupTeam       = WorldCupTeam(teamID: 16, teamName: "Japan")
let mexico: WorldCupTeam      = WorldCupTeam(teamID: 17, teamName: "Mexico")
let morocco: WorldCupTeam     = WorldCupTeam(teamID: 18, teamName: "Morocco")
let netherlands: WorldCupTeam = WorldCupTeam(teamID: 19, teamName: "Netherlands")
let poland: WorldCupTeam      = WorldCupTeam(teamID: 20, teamName: "Poland")
let portugal: WorldCupTeam    = WorldCupTeam(teamID: 21, teamName: "Portugal")
let qatar: WorldCupTeam       = WorldCupTeam(teamID: 22, teamName: "Qatar")
let saudiArabia: WorldCupTeam = WorldCupTeam(teamID: 23, teamName: "Saudi Arabia")
let senegal: WorldCupTeam     = WorldCupTeam(teamID: 24, teamName: "Senegal")
let serbia: WorldCupTeam      = WorldCupTeam(teamID: 25, teamName: "Serbia")
let southKorea: WorldCupTeam  = WorldCupTeam(teamID: 26, teamName: "South Korea")
let spain: WorldCupTeam       = WorldCupTeam(teamID: 27, teamName: "Spain")
let switzerland: WorldCupTeam = WorldCupTeam(teamID: 28, teamName: "Switzerland")
let tunisia: WorldCupTeam     = WorldCupTeam(teamID: 29, teamName: "Tunisia")
let uruguay: WorldCupTeam     = WorldCupTeam(teamID: 30, teamName: "Uruguay")
let usa: WorldCupTeam         = WorldCupTeam(teamID: 31, teamName: "USA")
let wales: WorldCupTeam       = WorldCupTeam(teamID: 32, teamName: "Wales")
 
//USA.initialDraw = 2
var team1: String = usa.teamName
var teamNames: [String] = [argentina.teamName, australia.teamName, belgium.teamName, brazil.teamName, cameroon.teamName, canada.teamName, costaRica.teamName, croatia.teamName, denmark.teamName, ecuador.teamName, england.teamName, france.teamName, germany.teamName, ghana.teamName, iran.teamName, japan.teamName, mexico.teamName, morocco.teamName, netherlands.teamName, poland.teamName, portugal.teamName, qatar.teamName, saudiArabia.teamName, senegal.teamName, serbia.teamName, southKorea.teamName, spain.teamName, switzerland.teamName, tunisia.teamName, uruguay.teamName, usa.teamName, wales.teamName]

// TODO: not sure how to use this list
let teams: [WorldCupTeam] = [argentina, australia, belgium, brazil, cameroon, canada, costaRica, croatia, denmark, ecuador, england, france, germany, ghana, iran, japan, mexico, morocco, netherlands, poland, portugal, qatar, saudiArabia, senegal, serbia, southKorea, spain, switzerland, tunisia, uruguay, usa, wales]

// MARK: - #7

/*
 ES 7.- Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido:
 Partido: España 3 - 1 Brasil
 EN 7.- Create a class to represent the matches between teams, it must contain attributes such as home team, away team and result as a minimum.
 Generate a random list of matches from the list of previous teams and make a print of this style per match: Match: Spain 3 - 1 Brazil
 
  Desired/sample output:
  
  random matches, 32 teams, 16 matches
  teams = [0, 1, 2, 3...31]
  numberOfMatches = 16
  numberOfParings = 16/2 = 8
  paring1 = [31,12]
  paring2 = [14,32]
  paring32 = [4,29
  [[31,12],[14,2], ..., [4,29]]
  [USA vs. Mexico, Spain vs. Portugal,
 
 */

protocol SoccerDelegate: AnyObject {
    func matchDidStart (_ homeTeam: String, vs awayTeam: String)
    func matchDidEnd (_ winner: String)
}

// func startMatch, random gen scores, delg matchDidStart/End
class SoccerMatch { // match between teams
    weak var delegate: SoccerDelegate?
    
    func startMatch() {
        guard let homeTeam = teamNames.randomElement() else {return} //"Espana"
        let homeTeamScore = Int.random(in: 0...3)
        guard let awayTeam = teamNames.randomElement() else {return} //"Portugal"
        let awayTeamScore = Int.random(in: 0...3)
        var winner: String = ""
        
        delegate?.matchDidStart(homeTeam, vs: awayTeam)
        if homeTeamScore > awayTeamScore {
            winner = homeTeam
        } else if homeTeamScore < awayTeamScore {
            winner = awayTeam
        } else {
            winner = "Tie game"
        }
        
        //guard let winner = [homeTeam, awayTeam].randomElement() else { return }
        winner // view for debugging
        delegate?.matchDidEnd(winner)
        print("\(homeTeam) \(homeTeamScore) - \(awayTeam) \(awayTeamScore)")
    }
}

// funcs matchDidStart, matchDidEnd -> prints scoreboard & winner
class SoccerScore: SoccerDelegate {
    
    func matchDidStart (_ homeTeam: String, vs awayTeam: String) {
        print ("Soccer Match \(homeTeam) vs. \(awayTeam)")
    }
    
    func matchDidEnd(_ winner: String) {
        //print ("Soccer Score \(homeTeam) vs. \(awayTeam)")
        print("Winner: \(winner)")
    }
    
}

// Execute
let soccerMatch1 = SoccerMatch()
let soccerScore1 = SoccerScore()

soccerMatch1.delegate = soccerScore1
soccerMatch1.startMatch()
print("\n\n")

// consider removing this class as SoccerMatch will replace
class WorldCupMatch {
    var matchID: Int = 0
    var datePlayed: String = ""
    var round: String = ""
    var location: String = ""
    var homeTeam: String = ""
    var awayTeam: String = ""
    var homeTeamScore: Int? = 0
    var awayTeamScore: Int? = 0
    
    init (matchID: Int, datePlayed: String, round: String, location: String, homeTeam: String, awayTeam: String, homeTeamScore: Int?, awayTeamScore: Int?) {
        
        self.matchID = matchID
        self.datePlayed = datePlayed
        self.round = round
        self.location = location
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.homeTeamScore = homeTeamScore
        self.awayTeamScore = awayTeamScore
    }
}


func randomMatches(numberOfMatches: Int) { // use this for func playMatch inside class Match
    
    print("Number of matches: \(numberOfMatches)\n\n")
    var match1 = Int.random(in: 1...numberOfMatches)
    var matches: [String]
    teamNames // call for debug purposes
    teamNames.shuffle() // https://developer.apple.com/documentation/swift/array/shuffle()
    for _ in 1...numberOfMatches {
        var soccerMatch = SoccerMatch()
        var soccerScore = SoccerScore()
        soccerMatch.delegate = soccerScore
        soccerMatch.startMatch()
        print("\n")
    }
//    print("match1: \(match1)")
//    teams
}

randomMatches(numberOfMatches: 16)

let luckOfTheDraw: () = randomMatches(numberOfMatches: 16)

func randomMatch (team1: Int, team2: Int) {
    
}
teamNames
// Testing section
//print("\(argentina.teamId)")
teams.randomElement()

//not in use
func drawPlacement() {
    var series = [teamNames]
    var firstTeam = series.randomElement()
    series.removeAll { $0 == firstTeam }
    var secondTeam = series.randomElement()
}

drawPlacement()



// MARK: - #8

/*
 ES 8.- Generar de forma aleatoria, dentro de la clase Mundial, un listado de grupos con un máximo de 4 selecciones por grupo, se puede crear una clase nueva Grupo que contenga el nombre del grupo, listado de participantes y listado de partidos. Por ejemplo: Grupo A España, Brasil, Francia, Alemania.
 EN 8.- Generate randomly, within the World class, a list of groups with a maximum of 4 teams per group,
 you can create a new Group class that contains the name of the group, list of participants and list of matches. For example: Group A Spain, Brazil, France, Germany.
 
 Desired/sample output:
 Group A Spain, Brazil, France, Germany
 CreateGroup
 */

let Groups: Set = ["GroupA", "GroupB", "GroupC", "GroupD", "GroupE", "GroupF", "GroupG", "GroupH"]
print("Groups are: \(Groups)")

let x = Groups.randomElement()

// guard let winner = teams.randomE1ement() else { return }
// callback(winner)

// How to split an array into chunks. extension Array credit: https://www.hackingwithswift.com/example-code/language/how-to-split-an-array-into-chunks

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

//let teams: [String] = ["apple", "orange", "banana", "strawberry"]
let teamesDivided = teamNames.chunked(into: 4)
teamesDivided[0]
teamesDivided[1]
teamesDivided[2]
teamesDivided[3]


class Group {
    var groupName: String = ""
    var groupTeams: [String] = []
    
    init(groupName: String) {
        self.groupName = groupName
    }
    
    func printGroupName(groupName: String) {
        print("Group Name is Group \(groupName)")
    }
}

let groupA = Group(groupName: "A")


// MARK: - #9

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
