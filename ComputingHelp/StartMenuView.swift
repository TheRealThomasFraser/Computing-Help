import SwiftUI

struct StartMenuView: View {
    let options: [Options]
    var body: some View {
        NavigationStack {
            List(options) { option in
                NavigationLink(destination:
                                option.destination) {
                    OptionView(option : option)
                }
                                .listRowBackground(option.colour)
            }
            .navigationTitle("Options")
        }
    }
}

#Preview {
    StartMenuView(options: Options.Start)
}
