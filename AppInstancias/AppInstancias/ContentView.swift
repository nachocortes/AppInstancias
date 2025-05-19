//
//  ContentView.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import SwiftUI

struct ContentView: View {

    @StateObject var appState = AppStateViewModel()
        
        var body: some View {
            VStack {
                if appState.showLogin {
                    LoginView(appState: appState)
                } else if appState.showHome {
                    HomeView(appState: appState)
                } else if appState.showUser {
                    UsuarioView(appState: appState)
                } else if appState.showIncidenciasProceso {
                    ListaIncidenciasProcesoView(appState: appState)
                } else if appState.showIncidenciasReparadas {
                    ListaIncidenciasReparadasView(appState: appState)
                } else if appState.showIncidenciasFallidas {
                    ListaIncidenciasFallidasView(appState: appState)
                } else if appState.showActualizarUsuario {
                    ActualizarUsuarioView(appState: appState)
                } else if appState.showMensajes {
                    MensajesView(appState: appState)
                }
            }
        }
}

#Preview {
    ContentView()
}
