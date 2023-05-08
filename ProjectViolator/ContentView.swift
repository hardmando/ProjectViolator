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

let cardBackground: Color = Color(.white)
let buttonBackground: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.pink]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
let textGrad = LinearGradient(gradient: Gradient(colors: [Color.pink, Color.indigo]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)


struct CardView: View {
    var card: CategoryCard
    var body: some View {
        VStack(){
            HStack() {
                let amountString = String(format: "%.2f", card.amount)
                Text(card.title)
                    .font(.headline)
                    .padding(.leading)
                Spacer(minLength: 50)
                HStack {
                    Label("\(amountString)", systemImage: "dollarsign.circle")
                }
                Button(role: .none) {
                    
                }
            label: {
                Image(systemName: "plus")
                    .font(Font.title.weight(.heavy))
                    .frame(width: 80, height: 80)
            }
            .foregroundStyle(buttonBackground)
            .cornerRadius(8)
            .position(x:30,y:30)
            .frame(width: 60, height: 60)
            }
            .frame(width: 300, height: 70)
            .background(RoundedRectangle(cornerRadius: 8, style:
                    .continuous).fill(Color.white).shadow(radius: 8))
            .backgroundStyle(cardBackground)
            
            
        }
    }
}

let date = Date()
let monthString = date.month

struct ContentView: View {
    
    var body: some View {
        
        VStack() {    //MonthText Container
            Text(monthString)
                .font(.title)
                .foregroundStyle(textGrad)
                .frame(height: 80)
            ScrollView(){
                CardView(card: CategoryCard.sampleData[0])
                CardView(card: CategoryCard.sampleData[1])
                CardView(card: CategoryCard.sampleData[2])
                CardView(card: CategoryCard.sampleData[2])
                CardView(card: CategoryCard.sampleData[2])
                CardView(card: CategoryCard.sampleData[2])
                CardView(card: CategoryCard.sampleData[2])
                CardView(card: CategoryCard.sampleData[2])
                CardView(card: CategoryCard.sampleData[2])
                CardView(card: CategoryCard.sampleData[2])
                }
            .frame(width:350)
            }
        .position(x: 195, y: 350)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
