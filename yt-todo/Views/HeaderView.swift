//
//  HeaderView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 9.08.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("logo")
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(30)
            Text("TODO LIST")
                .font(.system(size: 25, weight: .bold, design: .default))
                .padding(.top, 100)
                
        }.padding(.top,100)
    }
}

#Preview {
    HeaderView()
}
