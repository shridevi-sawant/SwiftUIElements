//
//  ScrollingView.swift
//  SwiftUIElements
//
//  Created by Shridevi Sawant on 07/04/23.
//

import SwiftUI

struct ScrollingView: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            VStack{
                Text("Scroll View Demo")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                ScrollView([.horizontal, .vertical], showsIndicators: false){
                    VStack(spacing: 60) {
                        
                        
                        Image("tiger")
                            .resizable()
                            .frame(width: 600, height: 500)
                        
                        Image(systemName: "globe")
                            .resizable()
                            .frame(width: 600, height: 500)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}
