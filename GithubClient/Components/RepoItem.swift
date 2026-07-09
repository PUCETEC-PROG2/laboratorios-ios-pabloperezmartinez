//
//  RepoItem.swift
//  GithubClient
//
//  Created by PABLO on 9/7/26.
//

import SwiftUI

struct RepoItem: View {
    var body: some View {
        HStack {
            Image (uiImage: .githubLogo)
                .resizable()
                .frame(width: 80, height: 80)
            VStack (alignment: .leading){
                Text("Nombre del Repositorio")
                    .font(.title2)
                Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.")
                    .font(.caption)
                    .padding(.top, 0.1)
                HStack {
                    Text("Lenguaje")
                        .fontWeight(.bold)
                    Spacer()
                    Text("Swift")
                }
                .font(.caption2)
                .padding(.top, 0.1)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    RepoItem()
}
