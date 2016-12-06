import Foundation

// All Players saperate data represented by a Dictionary

let player1: [String: String] =
["Name": "Arnold Willis",
    "Height": "43",
    "Experience": "No",
    "Guardian": "Claire Willis"]

let player2: [String: String] =
["Name": "Ben Finkelstein",
    "Height": "44",
    "Experience": "No",
    "Guardian": "Aaron and Jill Finkelstein"]

let player3: [String: String] =
["Name": "Bill Bon",
    "Height": "43",
    "Experience": "Yes",
    "Guardian": "Sara and Jenny Bon"]

let player4: [String: String] =
["Name": "Chloe Alaska",
    "Height": "47",
    "Experience": "No",
    "Guardian": "David and Jamie Alaska"]

let player5: [String: String] =
["Name": "Diego Soto",
    "Height": "41",
    "Experience": "Yes",
    "Guardian": "Robin and Sarika Soto"]

let player6: [String: String] =
["Name": "Eva Gordon",
    "Height": "45",
    "Experience": "No",
    "Guardian": "Wendy and Mike Gordon"]

let player7: [String: String] =
["Name": "Herschel Krustofski",
    "Height": "45",
    "Experience": "Yes",
    "Guardian": "Wendy and Mike Gordon"]

let player8: [String: String] =
["Name": "Jill Tanner",
    "Height": "36",
    "Experience": "Yes",
    "Guardian": "Clara Tanner"]

let player9: [String: String] =
["Name": "Joe Kavalier",
    "Height": "39",
    "Experience": "No",
    "Guardian": "Sam and Elaine Kavalier"]

let player10: [String: String] =
["Name": "Joe Smith",
    "Height": "42",
    "Experience": "Yes",
    "Guardian": "Jim and Jan Smith"]

let player11: [String: String] =
["Name": "Karl Saygan",
    "Height": "42",
    "Experience": "Yes",
    "Guardian": "Heather Bledsoe"]

let player12: [String: String] =
["Name": "Kimmy Stein",
    "Height": "41",
    "Experience": "No",
    "Guardian": "Bill and Hillary Stein"]

let player13: [String: String] =
["Name": "Les Clay",
    "Height": "42",
    "Experience": "Yes",
    "Guardian": "Wynonna Brown"]

let player14: [String: String] =
["Name": "Matt Gill",
    "Height": "40",
    "Experience": "No",
    "Guardian": "Charles and Sylvia Gill"]

let player15: [String: String] =
["Name": "Phillip Helm",
    "Height": "44",
    "Experience": "Yes",
    "Guardian": "Thomas Helm and Eva Jones"]

let player16: [String: String] =
["Name": "Sal Dali",
    "Height": "41",
    "Experience": "No",
    "Guardian": "Gala Dali"]

let player17: [String: String] =
["Name": "Sammy Adams",
    "Height": "45",
    "Experience": "No",
    "Guardian": "Jeff Adams"]

let player18: [String: String] =
["Name": "Suzane Greenberg",
    "Height": "44",
    "Experience": "Yes",
    "Guardian": "Henrietta Dumas"]


// All Players

let players = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18]


// Logic to sort experienced and unexperienced players

var experiencedPlayers: [[String : String]] = []
var unexperiencedPlayers: [[String : String]] = []

for player in players {
    if player["Experience"] == "Yes" {
        experiencedPlayers.append(player)
    } else {
        unexperiencedPlayers.append(player)
    }
}


// Teams array

var dragons: [[String : String]] = []
var sharks: [[String : String]] = []
var raptors: [[String : String]] = []

var teams = [dragons, sharks, raptors]


// Logic to find Total Players in a team

let playersPerTeam = players.count / teams.count
let experiencedPlayersPerTeam = experiencedPlayers.count / teams.count


// Logic to sort players into teams

// Logic to sort Experienced Players into teams

for experiencedPlayer in experiencedPlayers {
    
    if dragons.count < experiencedPlayersPerTeam {
        
        dragons.append(experiencedPlayer)
        
    } else if sharks.count < experiencedPlayersPerTeam {
        
        sharks.append(experiencedPlayer)
        
    } else if raptors.count < experiencedPlayersPerTeam {
        
        raptors.append(experiencedPlayer)
    }
}

// Logic to sort Unexperienced Players into teams

for unexperiencedPlayer in unexperiencedPlayers {
    
    if dragons.count < playersPerTeam {
        
        dragons.append(unexperiencedPlayer)
        
    } else if sharks.count < playersPerTeam {
        
        sharks.append(unexperiencedPlayer)
        
    } else if raptors.count < playersPerTeam {
        
        raptors.append(unexperiencedPlayer)
    }
}

// To find average Height of each Team


// Average Height of Team Dragon

var sumOfDragonPlayersHeight: Int?
var tempDragon = 0
for dragonPlayer in dragons {
    
    sumOfDragonPlayersHeight = Int(dragonPlayer["Height"]!)
    tempDragon += sumOfDragonPlayersHeight!
}

var teamDragonsAverageHeight = tempDragon / dragons.count

print("Average Height of Team Dragon Player's is \(teamDragonsAverageHeight)\n")


// Average Height of Team Shark

var sumOfSharkPlayersHeight: Int?
var tempShark = 0
for sharksPlayer in sharks {
    
    sumOfSharkPlayersHeight = Int(sharksPlayer["Height"]!)
    tempShark += sumOfSharkPlayersHeight!
}

var teamSharksAverageHeight = tempShark / dragons.count

print("Average Height of Team Shark Player's is \(teamSharksAverageHeight)\n")


// Average Height of Team Raptor

var sumOfRaptorPlayersHeight: Int?
var tempRaptor = 0

for raptorsPlayer in raptors {
    
    sumOfRaptorPlayersHeight = Int(raptorsPlayer["Height"]!)
    tempRaptor += sumOfRaptorPlayersHeight!
}

var teamRaptorsAverageHeight = tempRaptor / dragons.count

print("Average Height of Team Raptor Player's is \(teamRaptorsAverageHeight)\n\n")


// Personalized letters to Guardian of the players

// Function to create Personalized letters

func sendLetter (playerinfo: [String: String],team: String,practice: String){
    
    
    print("Dear \(playerinfo["Guardian"]!),\n\(playerinfo["Name"]!) was selected to play for Team \(team).\nHis First Team Practice will be on \(practice).\n")
    
    // I have put ! to unwrap the values.
    
}



// Function call to to send Personalized letters by their Team's

print("------ Team Dragon's Letters ------\n")

for dragonPlayer in dragons {
    let teamName = "Dragon"
    let practice = "March 17, 1 PM"
    
    sendLetter(dragonPlayer, team: teamName, practice: practice)
}

print("\n------ Team Shark's Letters ------\n")

for sharksPlayer in sharks {
    let teamName = "Shark"
    let practice = "March 17, 3 PM"
    
    sendLetter(sharksPlayer, team: teamName, practice: practice)
}

print("\n------ Team Raptor's Letters ------\n")

for raptorsPlayer in raptors {
    let teamName = "Raptor"
    let practice = "March 18, 1 PM"
    
    sendLetter(raptorsPlayer, team: teamName, practice: practice)
}

