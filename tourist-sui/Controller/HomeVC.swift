//
//  HomeVC.swift
//  tourist-sui
//


import SwiftUI

struct HomeVC: View {
      
      var animation: Namespace.ID
      @Binding var show: Bool
      @Binding var selected: TravelItem
      
      var body: some View {
  
          ScrollView(.vertical, showsIndicators: false) {
              
              VStack {
                  
                  HStack {
                      
                      Text("Discover a Different World")
                          .font(.system(size: 30))
                          .fontWeight(.bold)
                          .foregroundColor(Color("txt"))
                      
                      Spacer(minLength: 0)
                      
                      Button(action: {}) {
                          
                          Image("search")
                              .renderingMode(.template)
                              .foregroundColor(.white)
                              .padding()
                              .background(Color("Color"))
                              .clipShape(Circle())
                      }
                  }
                  .padding()
                  // since all edges are ignored....
                  .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                  
                  ScrollView(.horizontal, showsIndicators: false) {
                      
                      HStack(spacing: 15){
                          
                          ForEach(1...5,id: \.self){i in
                              
                              Image("r(i)")
                                  .renderingMode(.original)
                                  .onTapGesture {
                                      
                                      // do some stuff....
                                  }
                          }
                      }
                      .padding()
                  }
                  
                  HStack{
                      
                      Text("Destinations")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color("txt"))
                      
                      Spacer()
                      
                      Button(action: {}) {
                          
                          Text("See All")
                              .foregroundColor(.gray)
                      }
                  }
                  .padding()
                  
                  ForEach(data){travel in
                      
                      ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                          
                          Image("(travel.img)")
                              .resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(height: 300)
                              .cornerRadius(25)
                              .matchedGeometryEffect(id: travel.img, in: animation)
                          
                          
                          VStack(alignment: .trailing, spacing: 8) {
                              
                              Text(travel.title)
                                  .font(.title)
                                  .fontWeight(.bold)
                                  .foregroundColor(.white)
                                  .matchedGeometryEffect(id: travel.title, in: animation)
                              
                              Text(travel.country)
                                  .fontWeight(.bold)
                                  .foregroundColor(.white)
                                  .matchedGeometryEffect(id: travel.country, in: animation)
                          }
                          .padding()
                      }
                      .padding()
                      // setting detail Data...
                      .onTapGesture {
                          
                          withAnimation(.spring()){
                              
                              selected = travel
                              show.toggle()
                          }
                      }
                  }
              }
          }
      }
  }

var data = [

    TravelItem(title: "Carribean", country: "French", ratings: "4.9", price: "$200", img: "p1"),
    TravelItem(title: "Big Sur", country: "USA", ratings: "4.1", price: "$150", img: "p2"),
]

//struct HomeVC_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeVC()
//    }
//}
