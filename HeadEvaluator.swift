import Foundation

func evaluateHead(_ cards: [Card]) -> Int {
    guard cards.count == 3 else { return 0 }

    let ranks = cards.map { $0.rank }
    let counts = Dictionary(grouping: ranks, by: { $0 }).mapValues { $0.count }

    if counts.values.contains(3) {
        return 3 // หัวตอง
    }

    if counts.values.contains(2) {
        if let pairRank = counts.first(where: { $0.value == 2 })?.key {
            return pairRank == .ace ? 2 : 1 // หัวคู่ A = 2, คู่อื่น = 1
        }
    }

    struct HeadEvaluator {
    static func score(for hand: [Card]) -> Int {
        let ranks = hand.map { $0.rank }
        let uniqueRanks = Set(ranks)

        if uniqueRanks.count == 1 {
            return 3 // ตอง
        } else if uniqueRanks.count == 2 {
            if ranks.contains(.ace) {
                return 2 // คู่ A
            }
            return 1 // คู่ทั่วไป
        } else {
            return 1 // หัวแตก
        }
    }
    }

    return 1 // หัวแตก (ไม่มีคู่ ไม่มีตอง)
}
let head = [
    Card(rank: .ace, suit: "hearts"),
    Card(rank: .ace, suit: "clubs"),
    Card(rank: .king, suit: "diamonds")
]

let score = evaluateHead(head)
print("หัวได้
