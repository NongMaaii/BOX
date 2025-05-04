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
