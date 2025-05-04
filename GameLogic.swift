import Foundation

class GameLogic {
    var deck = Deck()
    var playerHand: [Card] = []

    // แจกไพ่ 13 ใบให้กับผู้เล่น
    func dealInitialCards() {
        for _ in 0..<13 {
            if let card = deck.dealCard() {
                playerHand.append(card)
            }
        }
    }

    // แบ่งไพ่เป็น 3 กอง: หัว 3 ใบ, กลาง 5 ใบ, ท้าย 5 ใบ
    func splitIntoThreePiles() -> ([Card], [Card], [Card]) {
        let sortedHand = playerHand.sorted { $0.rank < $1.rank }
        let head = Array(sortedHand[0..<3])
        let middle = Array(sortedHand[3..<8])
        let tail = Array(sortedHand[8..<13])
        return (head, middle, tail)
    }

    // ฟังก์ชันประเมินไพ่จาก 3 กอง
    func evaluateThreePiles(head: [Card], middle: [Card], tail: [Card]) {
        let headScore = HeadEvaluator.score(for: head)
        let isMiddleFlush = FlushEvaluator.isFlush(middle)
        let middleScore = FlushEvaluator.score(for: middle)
        let tailHighCard = Hand(cards: tail).highestCard()
    }
        // แสดงผลการประเมิน
        print(""" 
              ===== ประเมินผลไพ่ =====
              หัว:""")
             

    import Foundation
    func dealCards(to players: inout [Player], deck: inout Deck) {
    for i in 0..<players.count {
        var hand: [Card] = []
        for _ in 0..<13 {  // แจก 13 ใบให้กับแต่ละผู้เล่น
            if let card = deck.drawCard() {
                hand.append(card)
            }
        }
        players[i].hand = hand
    
    }

    func sortHand(hand: inout [Card]) {
    hand.sort { $0.rank < $1.rank }
}
    func calculateScore(for hand: [Card]) -> Int {
    var score = 0
    
    // ใช้ HeadEvaluator ในการตรวจสอบคะแนนจากหัว (Pair, Triple, etc.)
    score += HeadEvaluator.evaluate(hand: hand)
    
    // ใช้ FlushEvaluator สำหรับฟรัช (ถ้ามี)
    score += FlushEvaluator.evaluate(hand: hand)
    
    return score
     }
    
    func calculateScore(for hand: [Card]) -> Int {
    var score = 0
    
    // ใช้ HeadEvaluator ในการตรวจสอบคะแนนจากหัว (Pair, Triple, etc.)
    score += HeadEvaluator.evaluate(hand: hand)
    
    // ใช้ FlushEvaluator สำหรับฟรัช (ถ้ามี)
    score += FlushEvaluator.evaluate(hand: hand)
    
    return score
}

func playGame() {
    var players = [Player(), Player(), Player()]  // จำนวนผู้เล่นสามารถปรับได้
    var deck = Deck()
    
    dealCards(to: &players, deck: &deck)
    
    for i in 0..<players.count {
        sortHand(hand: &players[i].hand)  // จัดเรียงไพ่ให้เรียบร้อย
    }
    
    if let winner = compareScores(players: players) {
        print("ผู้ชนะคือ:"
            
             )
    
        }
    }
    
}
    
func dealCardsToPlayers() -> [Player] {
    var players = (1...4).map { Player(id: $0) }
    var deck = Deck()

    for _ in 0..<13 { // แจกคนละ 13 ใบ
        for i in 0..<players.count {
            if let card = deck.drawCard() {
                players[i].hand.append(card)
            }
        }
    }

    return players
}      
}


    
