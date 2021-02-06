//
//  Made with ❤ and ☕ 
//

import SwiftUI

struct ActivityBookView: View {
    let price: String
    let previousPrice: String
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading, spacing: 10) {
                Text("PRICE P/P")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.gray)
                Text(price)
                    .font(.system(size: 22, weight: .bold))
            }
            
            Text(previousPrice)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.gray)
                .strikethrough(true, color: Color.black)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Book Now")
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color.orange)
                    .cornerRadius(5)
            })
        }
    }
}
