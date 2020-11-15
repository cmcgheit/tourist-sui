//
//  DetailTravelView.swift
//  tourist-sui
//


import SwiftUI

struct DetailTravelView: View {
    
    @Binding var selected: TravelItem
    @Binding var show: Bool
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                    
                    Image(selected.img)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 330)
                        .clipShape(RoundedShape(corners: [.bottomLeft,.bottomRight]))
                        .matchedGeometryEffect(id: selected.img, in: animation)
                    
                    HStack{
                        
                        Button(action: {
                            
                            withAnimation(.spring()){show.toggle()}
                            
                        }) {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            
                            Image(systemName: "suit.heart")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                    }
                    .padding()
                    // since all edges are ignored....
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                }
                
                // Details View...
                
                HStack(alignment: .top){
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text(selected.title)
                            .font(.title)
                            .foregroundColor(Color("txt"))
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: selected.title, in: animation)
                        
                        HStack(spacing: 10){
                            
                            Image("map")
                            
                            Text(selected.country)
                                .foregroundColor(.black)
                                .matchedGeometryEffect(id: selected.country, in: animation)
                            
                            HStack(spacing: 5){
                                
                                Text(selected.ratings)
                                    .foregroundColor(.black)
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                    Text(selected.price)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("txt"))
                }
                .padding()
                .padding(.bottom)
            }
            .background(Color.white)
            .clipShape(RoundedShape(corners: [.bottomLeft,.bottomRight]))
            
            // ScrollView For Smaller Size Phones....
            
            if UIScreen.main.bounds.height < 750{
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                     BottomView()
                }
            }
            else{
                
                 BottomView()
            }
            
            Spacer(minLength: 0)
        }
        .background(Color("bg"))
    }
}

//struct DetailTravelView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailTravelView()
//    }
//}
