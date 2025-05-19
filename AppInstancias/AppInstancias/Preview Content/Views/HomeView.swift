//
//  HomeView.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var appState: AppStateViewModel

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            LazyVGrid(columns: columns, spacing: 20) {
                
                Button(action: {
                    appState.goToIncidenciasProceso()
                }) {
                    Label("Lista Incidencias", systemImage: "list.bullet")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(12)
                }

                Button(action: {
                    // Acción para insertar incidencia
                    print("Insertar incidencia") // puedes implementar lógica aquí
                }) {
                    Label("Insertar Incidencia", systemImage: "plus.circle")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(12)
                }

                Button(action: {
                    appState.goToIncidenciasReparadas()
                }) {
                    Label("Reparadas", systemImage: "wrench.and.screwdriver")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange.opacity(0.2))
                        .cornerRadius(12)
                }

                Button(action: {
                    appState.goToIncidenciasFallidas()
                }) {
                    Label("Cerradas sin reparar", systemImage: "exclamationmark.triangle")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red.opacity(0.2))
                        .cornerRadius(12)
                }

                Button(action: {
                    appState.goToUser()
                }) {
                    Label("Usuario", systemImage: "person")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.purple.opacity(0.2))
                        .cornerRadius(12)
                }

                Button(action: {
                    appState.goToMensajes()
                }) {
                    Label("Mensajes", systemImage: "envelope")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.teal.opacity(0.2))
                        .cornerRadius(12)
                }

                Button(action: {
                    // Acción para buscar incidencia
                    print("Buscar incidencia") // puedes implementar lógica aquí
                }) {
                    Label("Buscar", systemImage: "magnifyingglass")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(12)
                }
            }
            .padding()

            Spacer()
            
            TabBarView(appState: appState)
        }
    }
}

#Preview {
    HomeView(appState: AppStateViewModel())
}

