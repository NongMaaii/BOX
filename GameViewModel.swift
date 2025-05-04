class GameViewModel: ObservableObject {
    @Published var players: [Player] = []

    init() {
        dealCardsToPlayers()
    }

    func dealCardsToPlayers() {
        var deck = Deck()
        deck.shuffle()

        var newPlayers: [Player] = []
        for _ in 0..<4 {
            var hand: [Card] = []
            for _ in 0..<13 {
                if let card = deck.drawCard() {
                    hand.append(card)
                }
            }
            newPlayers.append(Player(hand: hand))
        }

        self.players = newPlayers
    }
}

struct MainView: View {
    @StateObject var viewModel = GameViewModel()

    var body: some View {
        VStack {
            ForEach(viewModel.players) { player in
                VStack(alignment: .leading) {
                    Text("Player
