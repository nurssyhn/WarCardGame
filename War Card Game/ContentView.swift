//
//  ContentView.swift
//  War Card Game
//
//  Created by Nur Sultan Şeyhanlıoğlu on 28.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card13"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image (cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image ("button")
                }
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text((String(playerScore)))
                            .font(.largeTitle)
                        
                    }
                    
                    .foregroundColor(Color.white)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    
                }
                
                .foregroundColor(Color.white)
                Spacer()
            }
            
        }
    }
    
    func deal() {
        
        //Randomize the player card
        var playerCardValue = Int.random(in: 2...14)
        playerCard="card" + String(playerCardValue)
        
        //Randomize the CPUs card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard="card" + String(cpuCardValue)
        
        //Add the score
        
        if playerCardValue > cpuCardValue  {
            playerScore += 1
        }
        
         else if playerCardValue < cpuCardValue {
            cpuScore += 1
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
