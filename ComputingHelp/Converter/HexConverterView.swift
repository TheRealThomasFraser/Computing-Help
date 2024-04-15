import SwiftUI

struct HexConverterView: View {
    @State private var hexInput = ""
    var body: some View {
        VStack {
            Text("Hexadecimal Converter")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Divider()
                Spacer()
            TextField("Enter Hex Value...", text: $hexInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.default)
            
            Spacer()
            List {
                HStack {
                    Text("Decimal:")
                    Spacer()
                    Text("\(hexToDecimal())")
                }
                HStack {
                    Text("Binary:")
                    Spacer()
                    Text("\(hexToBinary())")
                }
                HStack {
                    Text("Octal:")
                    Spacer()
                    Text("\(hexToOctal())")
                }
            }
            Spacer()
        }
        .padding()
    }
    private func hexToDecimal() -> String {
        if let hex = Int(hexInput, radix: 16) {
            return String(hex)
        }
        return ""
    }
    
    private func hexToBinary() -> String {
        if let hex = Int(hexInput, radix: 16) {
            return String(hex, radix: 2)
        }
        return ""
    }
    
    private func hexToOctal() -> String {
        if let hex = Int(hexInput, radix: 16) {
            return String(hex, radix: 8)
        }
        return ""
    }

}

struct HexConverterView_Previews: PreviewProvider {
    static var previews: some View {
        HexConverterView()
    }
}


