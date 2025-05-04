import Foundation

struct Player {
    var name: String
    var hand: [Card] = []
}

import Foundation

// Enum สำหรับดอกไพ่
enum Suit: String, CaseIterable {
    case hearts = "♥", diamonds = "♦", clubs = "♣", spades = "♠"
}

// Enum สำหรับค่าของไพ่
enum Rank: Int, CaseIterable {
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace

    var display: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default: return "

struct Player {
    var id: Int
    var hand: [Card] = []
}
            
struct Player: Identifiable {
    let id = UUID()
    var hand: [Card]
}
