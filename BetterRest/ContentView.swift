//
//  ContentView.swift
//  BetterRest
//
//  Created by Gerard White on 15/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var cupsOfCoffee = 1
    
    func calculateBedtime(){
        // somethihng
    }

    
    var body: some View {
        

        
        NavigationStack{
            VStack {
                Text("Daily coffee intake")
                    .font(.headline)
                
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.5).foregroundColor(.red)
                
                Stepper(cupsOfCoffee == 1 ? "1 cup" : "\(cupsOfCoffee) cups", value: $cupsOfCoffee, in: 1...10, step: 1)
                
                DatePicker("Please select a time", selection: $wakeUp, in: Date.now..., displayedComponents: [.hourAndMinute])
                
            }
            .padding()
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
