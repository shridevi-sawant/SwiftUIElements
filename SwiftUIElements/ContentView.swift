//
//  ContentView.swift
//  SwiftUIElements
//
//  Created by Shridevi Sawant on 07/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var address: String = "Enter Postal address"
    @State var isContinue: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .top){
                Color.orange.ignoresSafeArea()
                VStack {
                    Image(systemName: "globe")
                        //.aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 100)
                        .imageScale(.large)
                        
                        .foregroundColor(.accentColor)
                        
                    Text("Welcome to Cognizant")
                    TextEditor(text: $address)
                        .frame(height: 100)
                        .foregroundColor(.blue)
                        .font(.system(size: 28))
                        .cornerRadius(10)
                    
                    Button("Continue") {
                        isContinue = true
                        print("Address: \(address)")
                    }
                    .frame(width: 200, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    
                   
                    
                }
                .padding()
            }
        }
       
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
