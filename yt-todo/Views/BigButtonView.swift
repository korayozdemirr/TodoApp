//
//  BigButtonView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 10.08.2025.
//

import SwiftUI

struct BigButton: View {
    let title:String
    let action:() -> Void
    var body: some View {
        Button(action:action, label:{
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundStyle(.primary)
                Text(title)
                    .foregroundStyle(.white)
            }
        })
        .frame(height: 50)
        .padding(.horizontal)
    }
}

#Preview {
    BigButton(title: "String", action: {})
}
