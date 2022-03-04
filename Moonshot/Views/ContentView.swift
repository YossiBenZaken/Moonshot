//
//  ContentView.swift
//  Moonshot
//
//  Created by Yosef Ben Zaken on 28/02/2022.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showingGrid: Bool = false
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridLayout(astronauts: astronauts, missions: missions)
                        .background(.darkBackground)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                        .background(.darkBackground)
                }
            }
            .navigationTitle("Moonshot")
            .toolbar {
                Button("Show \(showingGrid ? "List" : "Grid")") {
                    withAnimation {
                        showingGrid.toggle()
                    }
                }
            }
            .preferredColorScheme(.dark)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
