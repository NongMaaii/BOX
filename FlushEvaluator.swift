import Foundation

enum Rank: Int {
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

struct Card {
    var rank: Rank
    var suit: String
}

func compareFlush(_ flush1: [Card], _ flush2: [Card]) -> String {
    let sortedFlush1 = flush1.sorted { $0.rank.rawValue > $1.rank.rawValue }
    let sortedFlush2 = flush2.sorted { $0.rank.rawValue > $1.rank.rawValue }
    
    if sortedFlush1[0].rank.rawValue > sortedFlush2[0].rank.rawValue {
        return "Flush 1 ชนะ"
    } else if sortedFlush1[0].rank.rawValue < sortedFlush2[0].rank.rawValue {
        return "Flush 2 ชนะ"
    } else {
        return "เสมอ"
    }
}

import Foundation

// สร้างประเภทของไพ่
enum Rank: Int {
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
}

struct Card {
    var rank: Rank
    var suit: String
}

// ฟังก์ชันเปรียบเทียบฟรัช
func compareFlush(_ flush1: [Card], _ flush2: [Card]) -> String {
    // เรียงลำดับไพ่จากสูงสุดไปต่ำสุด
    let sortedFlush1 = flush1.sorted { $0.rank.rawValue > $1.rank.rawValue }
    let sortedFlush2 = flush2.sorted { $0.rank.rawValue > $1.rank.rawValue }
    
    // เปรียบเทียบไพ่สูงสุด
    if sortedFlush1[0].rank.rawValue > sortedFlush2[0].rank.rawValue {
        return "Flush 1 ชนะ"
    } else if sortedFlush1[0].rank.rawValue < sortedFlush2[0].rank.rawValue {
        return "Flush 2 ชนะ"
    } else {
        return "เสมอ"
    }
}

// ตัวอย่างไพ่ฟรัช
let flush1 = [
    Card(rank: .ace, suit: "spades"),
    Card(rank: .king, suit: "spades"),
    Card(rank: .queen, suit: "spades"),
    Card(rank: .jack, suit: "spades"),
    Card(rank: .ten, suit: "spades")
]

let flush2 = [
    Card(rank: .king, suit: "hearts"),
    Card(rank: .queen, suit: "hearts"),
    Card(rank: .jack, suit: "hearts"),
    Card(rank: .ten, suit: "hearts"),
    Card(rank: .nine, suit: "hearts")
]

// เปรียบเทียบ
let result = compareFlush(flush1, flush2)
print(result)  // จะพิมพ์ "Flush 1 ชนะ"
