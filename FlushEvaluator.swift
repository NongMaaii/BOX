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
