//
//  ContentView.swift
//  SwiftDay2
//
//  Created by Linda Dang on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName:String = ""
    @State private var selectTomato:Bool = false
    @State private var selectCheese:Bool = false
    @State private var selectMushroom:Bool = false
    @State private var selectedColor:Color = .blue
    @State private var orderDate = Date()
    @State private var pizzaSize:String = "Medium"
    
    var body: some View {
        VStack {
            Text("🍕")
                .font(.system(size: 120))
                .padding(.bottom, 20)
            Text("It's Pizza time")
                .fontWeight(.heavy)
                .font(.system(size: 32))
            
            Form {
                
                Section(header: Text("Your name")) {
                    TextField("Your name", text: $userName )
                }
                
                Section(header: Text("Toppings")) {
                    Toggle("Tomato", isOn: $selectTomato)
                    Toggle("Cheese", isOn: $selectCheese)
                    Toggle("Mushroom", isOn: $selectMushroom)
                }
                
                Section {
                    ColorPicker ("The color of your pizza box", selection: $selectedColor)
                    
                }
                
                Section {
                    Picker("Size" , selection: $pizzaSize) {
                        ForEach(["Small", "Medium", "Large"], id: \.self) { //create size choices
                        Text($0)
                        }
                    }
                }
                
                Section {
                    DatePicker("Order date", selection: $orderDate)
                }
            }
        }
    }
    // .padding()
}


#Preview {
    ContentView()
}
