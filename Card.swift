// Card.swift

import Foundation

enum Suit: String, CaseIterable {
    case hearts = "♥"
    case diamonds = "♦"
    case clubs = "♣"
    case spades = "♠"
}

// ค่าของไพ่
enum Rank: Int, CaseIterable {
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack = 11, queen = 12, king = 13, ace = 14  // ให้ A ใหญ่สุด

    var display: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default: return String(self.rawValue)
        }
    }
}

// คลาสสำหรับไพ่
class Card {
    var rank: Rank
    var suit: Suit
    
    init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    // ฟังก์ชั่นแสดงข้อมูลไพ่
    func description() -> String {
        return "

        struct Card: Identifiable {
    let id = UUID()
    let suit: String
    let rank: String
        }
        
enum Suit: String, CaseIterable {
    case spades, hearts, diamonds, clubs
}

enum Rank: Int, CaseIterable, Comparable {
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace

    static func < (lhs: Rank, rhs: Rank) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

struct Card: Equatable {
    let suit: Suit
    let rank: Rank
}
import Foundation

enum Suit: String, CaseIterable {
    case hearts, diamonds, clubs, spades
}

enum Rank: Int, CaseIterable {
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

struct Card: Equatable {
    let suit: Suit
    let rank: Rank

    static var allCards: [Card] {
        var deck: [Card] = []
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                deck.append(Card(suit: suit, rank: rank))
            }
        }
        return deck
    }
}
