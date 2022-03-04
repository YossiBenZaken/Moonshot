//
//  ListLayout.swift
//  Moonshot
//
//  Created by Yosef Ben Zaken on 04/03/2022.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    var body: some View {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        return ZStack {
            Color(red: 0.1, green: 0.1, blue: 0.2)
                .edgesIgnoringSafeArea(.all)
            List {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        HStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 44, height: 44)
                            VStack(alignment: .leading) {
                                Text(mission.displayName)
                                    .font(.headline)
                                Text(mission.formattedLaunchDate)
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .listRowBackground(Color(red: 0.2, green: 0.2, blue: 0.3))
                .listStyle(.inset)
            }
        }
    }
}

struct ListLayout_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static var previews: some View {
        ListLayout(astronauts: astronauts, missions: missions)
    }
}
