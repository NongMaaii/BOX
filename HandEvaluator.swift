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
