//
//  ContentView.swift
//  ProjectViolator
//
//  Created by Hardmando on 02.05.2023.
//

import SwiftUI

extension Date {
    var month: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self)
    }
}


let date = Date()
let monthString = date.month

let textGrad = LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)


struct ContentView: View {
    
    var body: some View {
        
        cardContainer {
            let accentColor = Color(red: 1, green: 0.5, blue: 0.5)
            Text(monthString)
                .font(.title)
                .position(x: 185, y:20)
                .foregroundStyle(textGrad)
            
            VStack{
                
            }
            
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
