//
//  ContentView.swift
//  Roll Dice SwiftUI
//
//  Created by Rasaal Ahmad on 23/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    var body: some View {
        ZStack{
            Image("GreenBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("DiceeLogo")
                Spacer()
                HStack{
                    DiceView(diceNumber: leftDiceNumber)
                    DiceView(diceNumber: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button("Roll") {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .padding(.horizontal)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    var diceNumber:Int
    var body: some View {
        Image("Dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
