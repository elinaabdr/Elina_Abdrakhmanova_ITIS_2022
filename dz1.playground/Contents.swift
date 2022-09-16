import UIKit

// характеристики
protocol Characteristics {
    // hp
    var HP: Int{get set }
    // урон
    var damage: Int{get set }
    // интеллект

    func getInfo() -> String
}

// раса
enum Race {
    case elf
    case Sniper
}

class Player: Characteristics {
    var HP: Int
    var damage: Int
    var race: Race

    
    init( HP: Int,damage: Int,race: Race){
        self.HP = HP
        self.damage = damage
        self.race = race
    }
    
    func getInfo() -> String{
        return "***Раса: \(race)***\n HP: \(HP)\n урон:\(damage)\n"
    }
    func Attack(monster: Monster){
        monster.HP -= self.damage
        }
    }

class Monster {
    var HP: Int
    var damage: Int
    var monsterType: MonsterType
    
    init(monsterType: MonsterType){
        self.monsterType = monsterType
        
        if (monsterType == .Orc){
            self.HP = 15
            self.damage = 3
        }
        else if (monsterType == .BlackBear){
            self.HP = 40
            self.damage = 11
        }
        else {
            self.HP = 70
            self.damage = 26
        }
    }
    
    func getInfoMonster() -> String{
        return "***Монстр: \(monsterType)***\n HP: \(HP)\n урон:\(damage)"
    }
    func AttackMonster(player:Player) {
        if (monsterType == .Orc){
            player.HP -= 3
        }
        else if (monsterType == .BlackBear){
            player.HP -= 11
        }
        else {
            player.HP -= 26
        }
    }
    
}

enum MonsterType {
    case Orc
    case BlackBear
    case FleshGolem
}

//игра началась
let greeting = "***Дорогой игрок, рад тебя приветствовать в игре Herkfjfeovk***\n В игре существует 2 расы: elf - после удара может восстановливать силы \n sniper - способен отразить урон монстра"
print(greeting)

var pl1 = Player(HP: Int.random(in: 50...70), damage: Int.random(in: 5...15), race: .Sniper)

var monster = Monster(monsterType: .FleshGolem)

let rndMonster = Int.random(in: 1...3)
if (rndMonster == 1) {
    monster = Monster(monsterType: .Orc)
}
else if (rndMonster == 2) {
    monster = Monster(monsterType: .BlackBear)
}
else if (rndMonster == 3) {
    monster = Monster(monsterType: .FleshGolem)
}

print("------------------------")
print(pl1.getInfo())
print("------------------------")
print("***Игра началась))) - Счастливых вам голодных игр***")
print("------------------------")


print("***ГЕОЛОКАЦИЯ - ДРЕМУЧИЙ ЛЕС***")
var count = 100
while(pl1.HP > 0 && count > 0 && monster.HP > 0) {
    
    while (pl1.HP > 0 || monster.HP > 0){
        print("...Игрок идет по тропинке...")
        count-=1
        let monsterChance = Int.random(in: 1...2)
        
        if (monsterChance == 1 && monster.HP > 0){
                        print("!!!На игрока напал монстр!!!")
                        print(monster.getInfoMonster())
                        
                        let attack = Int.random(in: 1...2)
                        
                        if (attack == 1){
                            print("***Игрок нанес урон***")
                            pl1.Attack(monster: monster)
                            count-=1
                            print("***HP монстра: \(monster.HP)***")
                            
                            if (monster.HP < 0){
                                print("***Игрок выиграл в бою***")
                            }
                            if (pl1.HP < 0){
                                print("***Игрок был убит***")
                            }
                        }
                        if (attack == 2){
                            let rndsnaiper = Int.random(in: 1...2)
                            
                            if (rndsnaiper == 1 && pl1.race == .Sniper){
                            print("!!!Монстр нанес игроку урон!!!")
                            monster.AttackMonster(player: pl1)
                            count-=1
                            print("***HP игрока: \(pl1.HP)***")
                            }
                            if (rndsnaiper == 2 && pl1.race == .Sniper){
                            print("***Игрок отразил удар***")
                            pl1.Attack(monster: monster)
                            count-=1
                            print("***HP монстра: \(monster.HP)***")
                            }
                            if (monster.HP < 0){
                                print("***Игрок выиграл в бою***")
                            }
                            if (pl1.HP < 0){
                                print("***Игрок был убит***")
                            }
                            
                            let rndelf = Int.random(in: 1...2)
                            if (rndelf == 1 && pl1.race == .elf){
                            print("!!!Монстр нанес игроку урон!!!")
                            monster.AttackMonster(player: pl1)
                            count-=1
                            print("***HP игрока: \(pl1.HP)***")
                            }
                            if (rndelf == 2 && pl1.race == .elf){
                            print("***Игрок восстановил силы***")
                                pl1.HP += Int.random(in: 5...15)
                            count-=1
                                print("***HP игрока: \(pl1.HP)***")
                            }
                            if (monster.HP < 0){
                                print("***Игрок выиграл в бою***")
                            }
                            if (pl1.HP < 0){
                                print("***Игрок был убит***")
                            }
                        }
                    }
        else{
            print("...Игрок продолжает идти...")
            count-=1
        }
    break
    }
}
print("***Конец игры***")

