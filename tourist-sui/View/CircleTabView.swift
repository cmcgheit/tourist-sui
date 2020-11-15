//
//  CircleTabView.swift
//  tourist-sui
//

import SwiftUI

struct CircleTabView: View {
    
    @State var tab = "Explore"
    @Namespace var animation
    @State var show = false
    @State var selected: TravelItem = data[0]
    
    var body: some View {
        
        ZStack{
            
            VStack(spacing: 0) {
                
                // changing Views Based On tab....
                
                switch(tab) {
                
                case "Explore": HomeVC(animation: animation, show: $show, selected: $selected)
                case "Liked": LikedView()
                default: AccountView()
                
                }
                
                Spacer()
                
                HStack(spacing: 0) {
                    
                    TabButton(title: "Explore", tab: $tab)
                    
                    Spacer(minLength: 0)
                    
                    TabButton(title: "Liked", tab: $tab)
                    
                    Spacer(minLength: 0)
                    
                    TabButton(title: "Account", tab: $tab)
                }
                .padding(.top)
                // for smaller size iPhones....
                .padding(.bottom,UIApplication.shared.windows.first!.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first!.safeAreaInsets.bottom)
                .padding(.horizontal,35)
                .background(Color.white)
                .clipShape(RoundedShape(corners: [.topLeft,.topRight]))

            }
        
            if show {
                
                DetailTravelView(selected: $selected, show: $show, animation: animation)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color("bg").edgesIgnoringSafeArea(.all))
    }
}

struct CircleTabView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTabView()
    }
}

