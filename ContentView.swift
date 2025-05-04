import SwiftUI

struct ContentView: View {
    @State private var deck = Deck()
    @State private var drawnCard: Card?

    var body: some View {
        VStack {
            Button("Draw Card") {
                drawnCard = deck.draw()
            }
            .padding()

            if let card = drawnCard {
                Text("You drew:

struct ContentView: View {
    @StateObject var deck = DeckViewModel()

    var body: some View {
        VStack {
            ForEach(deck.cards) { card in
                Text("              
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

print(compareFlush(flush1, flush2))

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Testing Straight")
            .onAppear {
                let testHand = [
                    Card(suit: .hearts, rank: "A"),
                    Card(suit: .spades, rank: "2"),
                    Card(suit: .clubs, rank: "3"),
                    Card(suit: .diamonds, rank: "4"),
                    Card(suit: .hearts, rank: "5")
                ]

                if let score = HandEvaluator.straightRank(testHand) {
                    print("Straight! Rank score:


import SwiftUI

// ตัวแสดงไพ่
struct CardView: View {
    var card: Card

    var body: some View {
        Text("

    var sortedHand: [Card] {
    player.hand.sorted {
        if $0.rank.rawValue == $1.rank.rawValue {
            return $0.suit.sortIndex < $1.suit.sortIndex
        } else {
            return $0.rank.rawValue < $1.rank.rawValue
        }
    }
}"

             
import SwiftUI

struct CardView: View {
    let card: Card

    var body: some View {
        Text("
             
enum Suit: String, CaseIterable {
    case clubs = "♣", diamonds = "♦", hearts = "♥", spades = "♠"

    var sortIndex: Int {
        switch self {
        case .clubs: return 0
        case .diamonds: return 1
        case .hearts: return 2
        case .spades: return 3
        }
    }
}"
