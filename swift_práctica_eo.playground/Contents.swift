import UIKit

/*
 Práctica iOS Swift
 Eric Olsson
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


/*
 ES 5.- Crear una clase, con los atributos necesarios, para representar a los miembros que participan en una selección del mundial y un enumerado que los diferencie por tipo, por ejemplo: Jugador, Seleccionador, Médico, etc.
 
 EN 5.- Create a class, with the necessary attributes, to represent the members that participate in a World Cup team and a list that differentiates them by type, for example: Player, Coach, Doctor, etc.
 */

class worldCupTeamRoster {
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


/*
 ES 6.- Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.
 EN 6.- Create the necessary classes, with the minimum attributes, to represent the soccer teams of the 2022 World Cup, for example: A class that represents the World Cup, we will need it to contain a list of Teams, each team will have its attributes, such as name, country, players, coach, etc.
*/

class WorldCupTeam {
    var teamName: String = ""
    var pais: String = ""
    var jugadores: String = ""
    var seleccionador: String = ""
    
    init (teamName: String, pais: String, jugadores: String, seleccionadar: String) {
        self.teamName = teamName
        self.pais = pais
        self.jugadores = jugadores
        self.seleccionador = seleccionadar
    }
}

let Argentina: WorldCupTeam
let Australia: WorldCupTeam
let Belgium: WorldCupTeam
let Brazil: WorldCupTeam
let Cameroon: WorldCupTeam
let Canada: WorldCupTeam
let CostaRica: WorldCupTeam
let Croatia: WorldCupTeam
let Denmark: WorldCupTeam
let Ecuador: WorldCupTeam
let England: WorldCupTeam
let France: WorldCupTeam
let Germany: WorldCupTeam
let Ghana: WorldCupTeam
let Iran: WorldCupTeam
let Japan: WorldCupTeam
let Mexico: WorldCupTeam
let Morocco: WorldCupTeam
let Netherlands: WorldCupTeam
let Poland: WorldCupTeam
let Portugal: WorldCupTeam
let Qatar: WorldCupTeam
let SaudiArabia: WorldCupTeam
let Senegal: WorldCupTeam
let Serbia: WorldCupTeam
let SouthKorea: WorldCupTeam
let Spain: WorldCupTeam
let Switzerland: WorldCupTeam
let Tunisia: WorldCupTeam
let Uruguay: WorldCupTeam
let USA: WorldCupTeam
let Wales: WorldCupTeam
 
let teams: [worldCupTeam] = [Argentina, Australia, Belgium, Brazil, Cameroon, Canada, CostaRica, Croatia, Denmark, Ecuador, England, France, Germany, Ghana, Iran, Japan, Mexico, Morocco, Netherlands, Poland, Portugal, Qatar, SaudiArabia, Senegal, Serbia, SouthKorea, Spain, Switzerland, Tunisia, Uruguay, USA, Wales]


/*
 ES 7.- Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido:
 Partido: España 3 - 1 Brasil
 EN 7.- Create a class to represent the matches between teams, it must contain attributes such as home team, away team and result as a minimum. Generate a random list of matches from the list of previous teams and make a print of this style per match: Match: Spain 3 - 1 Brazil
 */

class worldCupGame {
    var matchID: Int = 0
    var datePlayed: String = ""
    var round: String = ""
    var location: String = ""
    var homeTeam: String = ""
    var awayTeam: String = ""
    var homeTeamScore: Int? = 0
    var awayTeamScore: Int? = 0
    
    init (matchID: Int, datePlayed: String, round: String, location: String, homeTeam: String, awayTeam: String, homeTeamScore: Int?, awayTeamScore: Int?) {
        
        self.datePlayed = datePlayed
        self.datePlayed = datePlayed
        self.round = round
        self.location = location
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.homeTeamScore = homeTeamScore
        self.awayTeamScore = awayTeamScore
    }
}


let Groups: Set = ["GroupA", "GroupB", "GroupC", "GroupD", "GroupE", "GroupF", "GroupG", "GroupH"]
print("Groups are: \(Groups)")

// 32 teams, 16 matches
