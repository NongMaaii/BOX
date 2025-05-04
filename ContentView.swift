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
