import SwiftUI

struct DecimalConverterView: View {
    @State private var decimalInput = ""
    var body: some View {
        VStack {
            Text("Decimal Converter")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Divider()
                Spacer()
            TextField("Enter Decimal Number...", text: $decimalInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Spacer()
            List {
                HStack {
                    Text("Binary:")
                    Spacer()
                    Text("\(decimalToBinary())")
                }
                
                HStack {
                    Text("Octal:")
                    Spacer()
                    Text("\(decimalToOctal())")
                }
                
                HStack {
                    Text("Hexadecimal:")
                    Spacer()
                    Text("\(decimalToHex())")
                }
            }
            
            Spacer()
        }
        .padding()
    }
    private func decimalToBinary() -> String {
        if let decimal = Int(decimalInput) {
            return String(decimal, radix: 2)
        }
        return ""
    }
    
    private func decimalToOctal() -> String {
        if let decimal = Int(decimalInput) {
            return String(decimal, radix: 8)
        }
        return ""
    }
    
    private func decimalToHex() -> String {
        if let decimal = Int(decimalInput) {
            return String(decimal, radix: 16)
        }
        return ""
    }
}

struct DecimalConverterView_Previews: PreviewProvider {
    static var previews: some View {
        DecimalConverterView()
    }
}

