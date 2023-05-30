//
//  SettingFormView.swift
//  SwiftUIElements
//
//  Created by Shridevi Sawant on 07/04/23.
//

import SwiftUI

struct SettingFormView: View {
    @State var name: String = ""
    @State var isReceiving: Bool = false
    @State var noOfLikes = 0
    @State var email: String = ""
    
    let emailTypes = ["personal", "official"]
    @State var selectedEmailType = "personal"
    
     func doReset() {
        print("Tapped...")
        print("Name: \(name)")
        print("isReceiving: \(isReceiving)")
        print("no of likes: \(noOfLikes)")
        print("Email: \(email)")
        print("Email Type: \(selectedEmailType)")
        
        name = ""
        email = ""
        isReceiving = false
        noOfLikes = 0
        selectedEmailType = emailTypes[0]
    }
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Form{
                
                Section {
                    TextField("Full Name", text: $name)
                } header: {
                    Text("Account Name")
                }
                
                Section {
                    Toggle("Receive Emails? ", isOn: $isReceiving)
                        .padding(.vertical, 30)
                    Stepper("Number of likes", value: $noOfLikes)
                        .padding(.vertical, 30)
                    //                    Text("You got \(noOfLikes) likes..")
                    //                        .padding(.vertical, 10)
                    
                    Label("You got \(noOfLikes) likes..",
                          systemImage: noOfLikes > 0 ? "hand.thumbsup.fill" : "hand.thumbsdown.fill")
                    
                } header: {
                    Text("Email Settings")
                }
                
                Section {
                    TextField("Enter Email", text: $email)
                    
                    
                    Picker("Email Type", selection: $selectedEmailType) {
                        ForEach(emailTypes, id: \.hashValue) { type in
                            
                            Text(type).tag(type)
                        }
                    }
                    .padding(.vertical, 20)
                    //.pickerStyle(.segmented)
                    
                    
                } header: {
                    Text("Profile Settings")
                }
                
                Button("Reset Settings") {
                    doReset()
                    
                }
                .foregroundColor(.red)
                
            }
            //.frame(width: 300, height: 600)
        }
    }
}

struct SettingFormView_Previews: PreviewProvider {
    static var previews: some View {
        SettingFormView()
    }
}
