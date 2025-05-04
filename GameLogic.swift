import Foundation
class GameLogic {
    var deck = Deck()
    var playerHand: [Card] = []

    func dealInitialCards() {
        for _ in 0..<13 {
            if let card = deck.dealCard() {
                playerHand.append(card)
            }
        }
    }

    func splitIntoThreePiles() -> ([Card], [Card], [Card]) {
        // สร้าง logic ให้แยกกองหน้า กลาง ท้าย
        // (ต้องให้ผู้เล่นเลือก หรือใช้ auto-split)
        return ([], [], [])
    }
}

func evaluateThreePiles(head: [Card], middle: [Card], tail: [Card]) {
    let headScore = HeadEvaluator.score(for: head)
    let isMiddleFlush = FlushEvaluator.isFlush(middle)
    let middleScore = FlushEvaluator.score(for: middle)
    let tailHighCard = Hand(cards: tail).highestCard()

    print("หัว:

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
          func compareScores(players: [Player]) -> Player? {
    var winner: Player? = nil
    var highestScore = -1
    
    for player in players {
        let score = calculateScore(for: player.hand)
        if score > highestScore {
            highestScore = score
            winner = player
        }
    }
    
    return winner
          }
          func playGame() {
    var players = [Player(), Player(), Player()]  // จำนวนผู้เล่นสามารถปรับได้
    var deck = Deck()
    
    dealCards(to: &players, deck: &deck)
    
    for i in 0..<players.count {
        sortHand(hand: &players[i].hand)  // จัดเรียงไพ่ให้เรียบร้อย
    }
    
    if let winner = compareScores(players: players) {
        print("ผู้ชนะคือ:
