import SwiftUI

struct OptionView: View {
    let option: Options
    let circleSize: CGFloat = 100
    var body: some View {
        HStack {
            Circle()
   
                .frame(width: circleSize, height: circleSize)
                .overlay {
                    Image(systemName: option.symbolName)
                        .font(.system(size: circleSize * 0.5))
                        .foregroundColor(option.colour)
                }
                
            Text(option.title)
                .font(.title2)

                .padding()
        }
    }
}

struct StartOption_Previews : PreviewProvider{
    static var option = Options.Start[2]
    static var previews: some View {
        OptionView (option: option)
            .previewLayout (.fixed(width: 400, height: 60))
            .background(option.colour)
    }
}
