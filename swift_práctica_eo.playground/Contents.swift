import UIKit

/*
 Eric Olsson
 Práctica iOS Swift
 XV Bootcamp Mobile
 11 Dic 2022
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

print("\n\nPlayers with 3 vowels include: \(playersWithThreeVowels)")


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
    
    init (teamName: String, jugador: String, seleccionadar: String, medico: String, gerente: String, gerenteDeEquipo: String, entrenador: String) {
        self.teamName = teamName
        self.jugador = jugador
        self.seleccionador = seleccionadar
        self.medico = medico
        self.gerente = gerente
        self.gerenteDeEquipo = gerenteDeEquipo
        self.entrenador = entrenador
    }
}


// MARK: - #6

/*
 ES 6.- Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.
 EN 6.- Create the necessary classes, with the minimum attributes, to represent the soccer teams of the 2022 World Cup, for example: A class that represents the World Cup, we will need it to contain a list of Teams, each team will have its attributes, such as name, country, players, coach, etc.
*/

class WorldCupTeam {
    var teamID: Int
    var teamName: String = ""
    var pais: String = ""
    var jugadores: String = ""
    var seleccionador: String = ""
    
    init (teamID: Int, teamName: String) {
        self.teamID = teamID
        self.teamName = teamName
    }
}

let Argentina: WorldCupTeam = WorldCupTeam(teamID: 1, teamName: "Argentina")
let Australia: WorldCupTeam = WorldCupTeam(teamID: 2, teamName: "Australia")
let Belgium: WorldCupTeam = WorldCupTeam(teamID: 3, teamName: "Belgium")
let Brazil: WorldCupTeam = WorldCupTeam(teamID: 4, teamName: "Brazil")
let Cameroon: WorldCupTeam = WorldCupTeam(teamID: 5, teamName: "Cameroon")
let Canada: WorldCupTeam = WorldCupTeam(teamID: 6, teamName: "Canada")
let CostaRica: WorldCupTeam = WorldCupTeam(teamID: 7, teamName: "Costa Rica")
let Croatia: WorldCupTeam = WorldCupTeam(teamID: 8, teamName: "Croatia")
let Denmark: WorldCupTeam = WorldCupTeam(teamID: 9, teamName: "Denmark")
let Ecuador: WorldCupTeam = WorldCupTeam(teamID: 10, teamName: "Ecuador")
let England: WorldCupTeam = WorldCupTeam(teamID: 11, teamName: "England")
let France: WorldCupTeam = WorldCupTeam(teamID: 12, teamName: "France")
let Germany: WorldCupTeam = WorldCupTeam(teamID: 13, teamName: "Germany")
let Ghana: WorldCupTeam = WorldCupTeam(teamID: 14, teamName: "Ghana")
let Iran: WorldCupTeam = WorldCupTeam(teamID: 15, teamName: "Iran")
let Japan: WorldCupTeam = WorldCupTeam(teamID: 16, teamName: "Japan")
let Mexico: WorldCupTeam = WorldCupTeam(teamID: 17, teamName: "Mexico")
let Morocco: WorldCupTeam = WorldCupTeam(teamID: 18, teamName: "Morocco")
let Netherlands: WorldCupTeam = WorldCupTeam(teamID: 19, teamName: "Netherlands")
let Poland: WorldCupTeam = WorldCupTeam(teamID: 20, teamName: "Poland")
let Portugal: WorldCupTeam = WorldCupTeam(teamID: 21, teamName: "Portugal")
let Qatar: WorldCupTeam = WorldCupTeam(teamID: 22, teamName: "Qatar")
let SaudiArabia: WorldCupTeam = WorldCupTeam(teamID: 23, teamName: "Saudi Arabia")
let Senegal: WorldCupTeam = WorldCupTeam(teamID: 24, teamName: "Senegal")
let Serbia: WorldCupTeam = WorldCupTeam(teamID: 25, teamName: "Serbia")
let SouthKorea: WorldCupTeam = WorldCupTeam(teamID: 26, teamName: "South Korea")
let Spain: WorldCupTeam = WorldCupTeam(teamID: 27, teamName: "Spain")
let Switzerland: WorldCupTeam = WorldCupTeam(teamID: 28, teamName: "Switzerland")
let Tunisia: WorldCupTeam = WorldCupTeam(teamID: 29, teamName: "Tunisia")
let Uruguay: WorldCupTeam = WorldCupTeam(teamID: 30, teamName: "Uruguay")
let USA: WorldCupTeam = WorldCupTeam(teamID: 31, teamName: "USA")
let Wales: WorldCupTeam = WorldCupTeam(teamID: 32, teamName: "Wales")
 
//let teams: [WorldCupTeam] = [Argentina, Australia, Belgium, Brazil, Cameroon, Canada, CostaRica, Croatia, Denmark, Ecuador, England, France, Germany, Ghana, Iran, Japan, Mexico, Morocco, Netherlands, Poland, Portugal, Qatar, SaudiArabia, Senegal, Serbia, SouthKorea, Spain, Switzerland, Tunisia, Uruguay, USA, Wales]


// MARK: - #7

/*
 ES 7.- Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido:
 Partido: España 3 - 1 Brasil
 EN 7.- Create a class to represent the matches between teams, it must contain attributes such as home team, away team and result as a minimum. Generate a random list of matches from the list of previous teams and make a print of this style per match: Match: Spain 3 - 1 Brazil
 */

class WorldCupGame {
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

// 32 teams, 16 matches

// let matchHomeTeam: WorldCupGame = WorldCupGame.init(matchID: <#T##Int#>, datePlayed: <#T##String#>, round: <#T##String#>, location: <#T##String#>, homeTeam: <#T##String#>, awayTeam: <#T##String#>, homeTeamScore: <#T##Int?#>, awayTeamScore: <#T##Int?#>)

let draw:

func drawAssignment {
    
    for n 1...32 {
        let match
    }
}

draw
[
// MARK: - #8

/*
 ES 8.- Generar de forma aleatoria, dentro de la clase Mundial, un listado de grupos con un máximo de 4 selecciones por grupo, se puede crear una clase nueva Grupo que contenga el nombre del grupo, listado de participantes y listado de partidos. Por ejemplo: Grupo A España, Brasil, Francia, Alemania.
 EN 8.- Generate randomly, within the World class, a list of groups with a maximum of 4 teams per group, you can create a new Group class that contains the name of the group, list of participants and list of matches. For example: Group A Spain, Brazil, France, Germany.
 */

let Groups: Set = ["GroupA", "GroupB", "GroupC", "GroupD", "GroupE", "GroupF", "GroupG", "GroupH"]
print("Groups are: \(Groups)")

let x = Groups.randomElement()

// guard let winner = teams.randomE1ement() else { return }
// callback(winner)



// MARK: - #9

/*
 ES 9.- Para añadir a cada Grupo los puntos de cada selección habrá que contabilizar las victorias con 3 puntos, empates con 1 y derrotas con 0. Añadir una función en la clase Grupo que le pasemos una selección y nos devuelva sus puntos.
 EN 9.- To add the points of each team to each Group, it will be necessary to count the victories with 3 points, draws with 1 and losses with 0. Add a function in the Group class that we pass on a selection and it returns its points.

 */

// MARK: - #10

/*
 ES 10.- Generar los partidos del Mundial en cada grupo y calcular las dos primeras selecciones de cada grupo y hacer un print con los clasificados.
 EN 10.- Generate the World Cup matches in each group and calculate the first two teams in each group and make a print with the qualifiers.
 
 */
