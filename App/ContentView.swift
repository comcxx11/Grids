//
//  ContentView.swift
//  App
//
//  Created by 홍서진 on 2022/04/09.
//

import SwiftUI

struct ContentView: View {
  
  let data = Array(1...1000).map { "Item \($0)" }
  
  let layout = [
    GridItem(.flexible(minimum: 80, maximum: 80)),
    GridItem(.flexible())
//    GridItem(.adaptive(minimum: 80, maximum: 100))
  ]
  
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: layout, spacing: 20) {
          ForEach(data, id: \.self) { item in
            VStack {
              Capsule()
                .fill(Color.blue)
                .frame(height: 50)
              
              Text(item)
                .foregroundColor(.secondary)
            }
          }
        }
        .padding(.horizontal)
      }
      .navigationTitle("SF Symbols Browser")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .previewDevice("iPhone 12 Pro")
    }
  }
}
