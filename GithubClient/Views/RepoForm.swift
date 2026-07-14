//
//  RepoForm.swift
//  GithubClient
//
//  Created by Usuario invitado on 10/7/26.
//

import SwiftUI

struct RepoForm: View {
    @State private var repoName: String = ""
    @State private var repoDescription: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                TextField("Nombre de repositorio", text: $repoName)
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                
                TextField("Descripción de repositorio", text: $repoDescription,
                          axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(6...10)
                    .padding(.vertical)
                
                Spacer()
                
                HStack {
                    Button(action: {
                        print("Botón Aplastado")
                    }) {
                        Label("Cancelar", systemImage: "xmark.circle")
                            .padding(.all, 10)
                            .foregroundStyle(.red)
                    }
                    .buttonStyle(.bordered)
                    
                    Button(action: {
                        print("Botón Aplastado")
                    }) {
                        Label("Guardar", systemImage: "square.and.arrow.down")
                            .padding(.all, 10)
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .padding()
            .navigationTitle("Formulario")
        }
    }
}

#Preview {
    RepoForm()
}
