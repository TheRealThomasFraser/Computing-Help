import SwiftUI

struct ConverterMenuView: View {
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
            .navigationTitle("Pick a type of number to convert:")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ConverterMenuView(options: Options.Converter)
}

