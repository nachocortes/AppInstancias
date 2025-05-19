//
//  TabBarView.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import SwiftUI

struct TabBarView: View {
    @ObservedObject var appState: AppStateViewModel
    
    var body: some View {
        HStack {
            Button("Home") {
                appState.selectedTab = .home
            }
            Button("Incidencias") {
                appState.selectedTab = .incidencias
            }
            Button("Perfil") {
                appState.selectedTab = .perfil
            }
        }
        .padding()
    }
}

#Preview {
    TabBarView()
}
