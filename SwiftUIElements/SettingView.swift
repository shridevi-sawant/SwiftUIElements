//
//  SettingView.swift
//  SwiftUIElements
//
//  Created by Shridevi Sawant on 07/04/23.
//

import SwiftUI

struct SettingView: View {
    
    @State var name: String = ""
    @State var isSecure: Bool = false
    @State var price: Double = 0.0
    @State var noOfSub: Int = 0
    
    var emailTypes: [String] = ["Personal", "Official"]
    
    @State var selectedEmailType : String = "Personal"
    @State var dob: Date = Date()
    
    var body: some View {
        
       
        

            ZStack {
                //Color.cyan.ignoresSafeArea()
                //Ellipse().foregroundColor(.gray)
                //AngularGradient(gradient: Gradient(colors: [Color.blue, Color.white]), center: .trailing)
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white, Color.yellow]), startPoint: .leading, endPoint: .bottom)
                    .ignoresSafeArea()

                VStack{
                    VStack {
                        Text("Account Settings")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        TextField("Account Name", text: $name)
                            .padding(20)
                            .frame(width: 300, height: 60)
                            .background(.white)
                            
                            .keyboardType(.emailAddress)
                    }
                    
                    
                    
                    // Divider()
                    
                    Toggle("Secure Account", isOn: $isSecure)
                        .frame(width: 300, height: 60)
                        .foregroundColor(.orange)
                        .font(.system(size: 24))
                    
                    
                    VStack{
                        Text("Pricing")
                            .foregroundColor(.white)
                            .padding(.trailing, 200)
                        
                        
                        
                        Slider(value: $price, in: 100...1000, step: 10.0) {
                            
                            
                        } minimumValueLabel: {
                            Text("100")
                        } maximumValueLabel: {
                            Text("1000")
                        }
                        .frame(width: 300)
                        
                        Text("Price : \(Int(price))")
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                        Stepper("No of Subscriptions", value: $noOfSub)
                            .frame(width: 300)
                        
                        Text("You got \(noOfSub) subscriptions")
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text("Email Type").foregroundColor(.white)
                        
                        Picker(selection: $selectedEmailType) {
                           
                            Text("\(emailTypes[0])").tag("Personal")
                            Text("\(emailTypes[1])").tag("Official")
                        } label: {
                            Text("Email Type")
                        }
                       // .pickerStyle(.segmented)
                        
                    }
                    
                    
                    Spacer()
                    
                    DatePicker("Date of Birth", selection: $dob, displayedComponents: .date)
                        .frame(width: 300)
                    //.background(.white)
                        .datePickerStyle(.compact)
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                    
                    
                }
            }
        
    }
    
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
