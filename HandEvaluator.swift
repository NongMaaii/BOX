import Foundation

struct HandEvaluator {
    // ให้ค่าลำดับของไพ่แต่ละใบ
    static let rankOrder: [String: Int] = [
        "2": 2, "3": 3, "4": 4, "5": 5,
        "6": 6, "7": 7, "8": 8, "9": 9,
        "10": 10, "J": 11, "Q": 12, "K": 13, "A": 14
    ]

    // ตรวจสอบว่าไพ่ 5 ใบเป็นสเตรทหรือไม่ และให้คะแนนตามลำดับ
    static func straightRank(_ cards: [Card]) -> Int? {
        guard cards.count == 5 else { return nil }

        let ranks = cards.compactMap { rankOrder[$0.rank] }.sorted()
        var uniqueRanks = Array(Set(ranks)).sorted()

        // ตรวจสอบลำดับปกติ
        for i in 0...(uniqueRanks.count - 5) {
            let slice = Array(uniqueRanks[i..<i+5])
            if slice[4] - slice[0] == 4 {
                return slice[4] // คืนค่าสูงสุดในสเตรท
            }
        }

        // ตรวจสอบ A-2-3-4-5 (กรณีพิเศษ)
        if uniqueRanks.contains(14) && uniqueRanks[0...3] == [2,3,4,5] {
            return 15 // กำหนดให้ A-2-3-4-5 เป็นรองใหญ่สุด
        }

        // สเตรทปกติ 10-J-Q-K-A ใหญ่สุด
        if uniqueRanks == [10, 11, 12, 13, 14] {
            return 16
        }

        // ถ้าไม่ใช่สเตรท
        return nil
    }
}

if let score = HandEvaluator.straightRank(hand) {
    print("Straight! Rank score:

import Foundation

struct HandEvaluator {
    static let straightRanks: [[String]] = [
        ["2", "3", "4", "5", "6"],
        ["3", "4", "5", "6", "7"],
        ["4", "5", "6", "7", "8"],
        ["5", "6", "7", "8", "9"],
        ["6", "7", "8", "9", "10"],
        ["7", "8", "9", "10", "J"],
        ["8", "9", "10", "J", "Q"],
        ["9", "10", "J", "Q", "K"],
        ["10", "J", "Q", "K", "A"], // ใหญ่สุด
        ["A", "2", "3", "4", "5"]   // รองใหญ่สุด
    ]

    static func straightRank(_ hand: [Card]) -> Int? {
        let ranks = hand.map { $0.rank }
        for (index, pattern) in straightRanks.enumerated() {
            if Set(pattern) == Set(ranks) {
                return index + 1
            }
        }
        return nil
    }
}
