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

    return 1 // หัวแตก (ไม่มีคู่ ไม่มีตอง)
}
