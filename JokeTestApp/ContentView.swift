//
//  ContentView.swift
//  JokeTestApp
//
//  Created by Tauan Tathiell Camargo on 01/07/24.
//

import SwiftUI

struct ContentView: View {
    var dataService = DataService()
    @State var joke: String?
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                if joke == nil {
                    Image(systemName: "ear.badge.waveform")
                        .font(.largeTitle)
                        .foregroundStyle(.tint)
                }
                
                Text(joke ?? "Tap to generate a joke!")
            }
            
            Spacer()
            
            Button {
                Task {
                    joke = await dataService.getJoke()?.joke
                }
            } label: {
                Text("Get random Joke")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
