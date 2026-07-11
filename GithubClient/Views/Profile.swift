//
//  Profile.swift
//  GithubClient
//
//  Created by Usuario invitado on 7/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading) {
                Text("Pablo Pérez Martínez")
                    .font(.title)
                Image(uiImage: .githubLogo)
                    .resizable()
                    .scaledToFit()
                Text("pabloperezmartinez")
                    .font(.headline)
                    .padding(.vertical)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .font(.caption)
            }
            .padding()
            .navigationTitle("Perfil")
        }
    }
}

#Preview {
    Profile()
}
