import Foundation
import SwiftUI

struct Options: Identifiable{
    let id: UUID
    var title: String
    var symbolName: String
    var colour: Color
    var destination: AnyView
    
    
    init(id: UUID = UUID(), title: String, symbolName: String, colour: Color, destination: AnyView) {
        self.id = id
        self.title = title
        self.symbolName = symbolName
        self.colour = colour
        self.destination = destination
        
    }
}

extension Options {
    static let Start: [Options] =
    [
        Options(title: "Personal Projects", symbolName: "macbook.gen2", colour: .red, destination: AnyView(ConverterMenuView(options: Options.Converter))),
        Options(title: "Uni Projects", symbolName: "graduationcap", colour: .green, destination: AnyView(ConverterMenuView(options: Options.Converter))),
        Options(title: "Number Converter", symbolName: "number", colour: .blue, destination: AnyView(ConverterMenuView(options: Options.Converter)))
    ]
}

extension Options {
    static let Converter: [Options] =
    [
        Options(title: "Decimal Number", symbolName: "number", colour: .red, destination: AnyView(DecimalConverterView())),
        Options(title: "Binary Number", symbolName: "10.lane", colour: .green, destination: AnyView(BinaryConverterView())),
        Options(title: "Octal Number", symbolName: "octagon", colour: .purple, destination: AnyView(OctalConverterView())),
        Options(title: "Hex Value", symbolName: "f.circle", colour: .blue, destination: AnyView(HexConverterView()))
    ]
}

