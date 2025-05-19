//
//  CustomNavbar.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import SwiftUI

struct CustomNavbar: View {
    @ObservedObject var appState: AppStateViewModel
    
    var body: some View {
        HStack {
            // Botón Home
            Button(action: {
                appState.goToHome()
            }) {
                Image(systemName: "house")
            }

            // Botón Medio (según contexto actual)
            Button(action: {
                switch appState.selectedTab {
                case .incidencias:
                    if appState.showIncidenciasProceso {
                        appState.goToIncidenciasReparadas()
                    } else if appState.showIncidenciasReparadas || appState.showIncidenciasFallidas {
                        appState.volverDeSubvistaIncidencias()
                    }
                case .user:
                    if appState.showUser {
                        appState.goToActualizarUsuario()
                    } else if appState.showActualizarUsuario || appState.showMensajes {
                        appState.volverDeSubvistaUsuario()
                    }
                default: break
                }
            }) {
                Image(systemName: middleIconName())
            }

            // Botón Derecho
            Button(action: {
                switch appState.selectedTab {
                case .home:
                    appState.goToUser()
                case .incidencias:
                    if appState.showIncidenciasProceso {
                        appState.goToIncidenciasFallidas()
                    } else if appState.showIncidenciasReparadas || appState.showIncidenciasFallidas {
                        appState.volverDeSubvistaIncidencias()
                    }
                case .user:
                    if appState.showUser {
                        appState.goToMensajes()
                    } else if appState.showActualizarUsuario || appState.showMensajes {
                        appState.volverDeSubvistaUsuario()
                    }
                default: break
                }
            }) {
                Image(systemName: rightIconName())
            }
        }
    }

    // Funciones auxiliares para íconos
    func middleIconName() -> String {
        switch appState.selectedTab {
        case .incidencias:
            return (appState.showIncidenciasProceso ? "wrench.and.screwdriver" : "arrow.left")
        case .user:
            return (appState.showUser ? "pencil" : "arrow.left")
        default:
            return "circle"
        }
    }

    func rightIconName() -> String {
        switch appState.selectedTab {
        case .incidencias:
            return (appState.showIncidenciasProceso ? "exclamationmark.triangle" : "arrow.left")
        case .user:
            return (appState.showUser ? "envelope" : "arrow.left")
        default:
            return "person"
        }
    }
}

#Preview {
    let appState = AppStateViewModel()
        appState.goToHome()
        return CustomNavbar(appState: appState)
            .padding()
            .background(Color.gray.opacity(0.2))
            .frame(height: 60)

}
