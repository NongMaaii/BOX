import Foundation

// โครงสร้างของไพ่
struct Card {
    let suit: String
    let rank: String
}

// สร้างกองไพ่
class Deck {
    var cards: [Card]

    init() {
        self.cards = []
        let suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
        let ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
        
        // สร้างไพ่ทั้งหมดในกอง
        for suit in suits {
            for rank in ranks {
                let card = Card(suit: suit, rank: rank)
                self.cards.append(card)
            }
        }
    }

    // ฟังก์ชันในการสับไพ่
    func shuffle() {
        cards.shuffle()
    }

    // ฟังก์ชันในการแจกไพ่
    func draw() -> Card? {
        return cards.isEmpty ? nil : cards.removeFirst()
    }
}

import Foundation

class Deck {
    var cards: [Card] = []

    // สร้างสำรับไพ่ 52 ใบ
    init() {
        let suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
        let ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
        
        for suit in suits {
            for rank in ranks {
                let card = Card(suit: suit, rank: rank)
                cards.append(card)
            }
        }
    }

    // สับไพ่
    func shuffle() {
        cards.shuffle()
    }

    // จั่วไพ่
    func draw() -> Card? {
        return cards.isEmpty ? nil : cards.removeFirst()
    }
}

class Deck {
    var cards: [Card] = []

    init() {
        let suits = ["♠", "♥", "♦", "♣"]
        let ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        for suit in suits {
            for rank in ranks {
                cards.append(Card(suit: suit, rank: rank))
            }
        }
        shuffle()
    }

    func shuffle() {
        cards.shuffle()
    }

    func drawCard() -> Card? {
        return cards.popLast()
    }
}
