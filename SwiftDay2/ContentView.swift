//
//  ContentView.swift
//  SwiftDay2
//
//  Created by Linda Dang on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName:String = ""
   // @State private var selectTomato:Bool = false
    //@State private var selectCheese:Bool = false
    //@State private var selectMushroom:Bool = false
    //@State private var selectedColor:Color = .blue
    
    var body: some View {
        VStack {
            Text("🍕")
                .font(.system(size: 120))
            Text("It's pizza time")
            Form {
                
                //Section(header: Text("Your name for the order")){
                    
                    Section(header: Text("Your name")) {
                        TextField("Your name", text: $userName )
                    }
                    
                Section(header: Text("Toppings")) {
                    Toggle("Tomato", isOn: .constant(true))
                    Toggle("Cheese", isOn: .constant(true))
                    Toggle("Mushroom", isOn: .constant(false))
                }
                    
                  //  Section (
                ColorPicker ("the color of your pizza box", selection: .constant(.blue))
                }
                
            }
            
        }
       // .padding()
    }
    

#Preview {
    ContentView()
}
