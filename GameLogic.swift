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
