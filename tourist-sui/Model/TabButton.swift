//
//  TabButton.swift
//  tourist-sui
//

import SwiftUI

struct TabButton: View {
      
      var title: String
      @Binding var tab: String
      
      var body: some View {
          
          Button(action: {tab = title}) {
              
              HStack(spacing: 8){
                  
                  Image(title)
                      .renderingMode(.template)
                      .foregroundColor(tab == title ? .white : .gray)
                  
                  
                  Text(tab == title ? title : "")
                      .foregroundColor(.white)
                      .fontWeight(.bold)
              }
              .padding(.vertical,10)
              .padding(.horizontal)
              .background(Color("Color").opacity(tab == title ? 1 : 0))
              .clipShape(Capsule())
          }
      }
  }
