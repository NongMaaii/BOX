// Card.swift

import Foundation

enum Suit: String, CaseIterable {
    case hearts = "♥"
    case diamonds = "♦"
    case clubs = "♣"
    case spades = "♠"
}

enum Rank: Int, CaseIterable {
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack = 11, queen, king, ace = 1

    var display: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default: return "

import Foundation

// สร้างประเภทของไพ่
enum Suit: String {
    case hearts = "♥"
    case diamonds = "♦"
    case clubs = "♣"
    case spades = "♠"
}

// ค่าของไพ่
enum Rank: String {
    case two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9", ten = "10", jack = "J", queen = "Q", king = "K", ace = "A"
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
