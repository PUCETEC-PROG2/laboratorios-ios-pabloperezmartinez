//
//  RepoList.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct RepoList: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    RepoItem()
                    RepoItem()
                    RepoItem()
                    RepoItem()
                    RepoItem()
                    RepoItem()
                    RepoItem()
                    RepoItem()
                    RepoItem()
                    RepoItem()

                }
                .padding()
            }
            .navigationTitle("Repositorios")
        }
    }
}

#Preview {
    RepoList()
}
