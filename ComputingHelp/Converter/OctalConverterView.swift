import SwiftUI

struct OctalConverterView: View {
    @State private var octalInput = ""
    var body: some View {
        VStack {
            Text("Octal Converter")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Divider()
                Spacer()
            TextField("Enter Octal Number...", text: $octalInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Spacer()
            List {
                HStack {
                    Text("Decimal:")
                    Spacer()
                    Text("\(octalToDecimal())")
                }
                HStack {
                    Text("Binary:")
                    Spacer()
                    Text("\(octalToBinary())")
                }
                HStack {
                    Text("Hexadecimal:")
                    Spacer()
                    Text("\(octalToHex())")
                }
            }
            
            Spacer()
        }
        .padding()
    }
    
    private func octalToDecimal() -> String {
        if let octal = Int(octalInput, radix: 8) {
            return String(octal)
        }
        return ""
    }
    
    private func octalToBinary() -> String {
        if let octal = Int(octalInput, radix: 8) {
            return String(octal, radix: 2)
        }
        return ""
    }
    
    private func octalToHex() -> String {
        if let octal = Int(octalInput, radix: 8) {
            return String(octal, radix: 16)
        }
        return ""
    }
}

struct OctalConverterView_Previews: PreviewProvider {
    static var previews: some View {
        OctalConverterView()
    }
}


