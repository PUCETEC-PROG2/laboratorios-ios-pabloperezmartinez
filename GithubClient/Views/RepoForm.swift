//
//  RepoForm.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//


import SwiftUI

struct RepoForm: View {
    @State private var repoName: String = ""
    @State private var repoDescription: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                TextField(
                    "",
                    text: $repoName,
                    prompt: Text("Nombre del repositorio")
                        .foregroundStyle(.accent.opacity(0.6))
                )
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
            
                TextField(
                    "",
                    text: $repoDescription,
                    prompt: Text("Decripción del repositorio")
                        .foregroundStyle(.accent.opacity(0.6))
                )
                .textFieldStyle(.roundedBorder)
                .lineLimit(4...10)
                .padding(.vertical)
                
                Spacer()
                
                Button(action: {
                    print ("Botón aplastado")
                }){
                    Label("Guardar Repo", systemImage: "square.and.arrow.down")
                        .padding(.all, 8)
                        .frame(maxWidth:.infinity)
                        
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Formulario de repositorio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm()
}
