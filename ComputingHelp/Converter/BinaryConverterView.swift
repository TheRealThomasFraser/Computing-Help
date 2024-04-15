import SwiftUI

struct BinaryConverterView: View {
    @State private var binaryInput = ""
    
    var body: some View {
        VStack {
            Text("Binary Converter")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Divider()
                Spacer()
            TextField("Enter Binary Number...", text: $binaryInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Spacer()
            List {
                HStack {
                    Text("Decimal:")
                    Spacer()
                    Text("\(binaryToDecimal())")
                }
                HStack {
                    Text("Octal:")
                    Spacer()
                    Text("\(binaryToOctal())")
                }
                HStack {
                    Text("Hexadecimal:")
                    Spacer()
                    Text("\(binaryToHex())")
                }
            }
            Spacer()
        }
        .padding()
    }
    
    // Convert Binary to Decimal
    private func binaryToDecimal() -> String {
        if let binary = Int(binaryInput, radix: 2) {
            return String(binary)
        }
        return ""
    }
    
    private func binaryToOctal() -> String {
        if let binary = Int(binaryInput, radix: 2) {
            return String(binary, radix: 8)
        }
        return ""
    }
    
    // Convert Binary to Hexadecimal
    private func binaryToHex() -> String {
        if let binary = Int(binaryInput, radix: 2) {
            return String(binary, radix: 16)
        }
        return ""
    }
}

struct BinaryConverterView_Previews: PreviewProvider {
    static var previews: some View {
        BinaryConverterView()
    }
}
