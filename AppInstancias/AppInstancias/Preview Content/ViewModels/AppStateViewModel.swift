//
//  AppStateViewModel.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import Foundation

class AppStateViewModel: ObservableObject {
 
        @Published var showLogin = true
        @Published var showHome = false
        @Published var showUser = false
        @Published var showIncidenciasProceso = false
        @Published var showIncidenciasReparadas = false
        @Published var showIncidenciasFallidas = false
        @Published var showActualizarUsuario = false
        @Published var showMensajes = false

      
        @Published var selectedTab: Tab = .home

        enum Tab {
            case home, incidencias, user
        }

        func resetAllStates() {
            showLogin = false
            showHome = false
            showUser = false
            showIncidenciasProceso = false
            showIncidenciasReparadas = false
            showIncidenciasFallidas = false
            showActualizarUsuario = false
            showMensajes = false
        }

        func goToHome() {
            resetAllStates()
            showHome = true
            selectedTab = .home
        }

        func goToUser() {
            resetAllStates()
            showUser = true
            selectedTab = .user
        }

        func goToIncidenciasProceso() {
            resetAllStates()
            showIncidenciasProceso = true
            selectedTab = .incidencias
        }

        func goToIncidenciasReparadas() {
            resetAllStates()
            showIncidenciasReparadas = true
            selectedTab = .incidencias
        }

        func goToIncidenciasFallidas() {
            resetAllStates()
            showIncidenciasFallidas = true
            selectedTab = .incidencias
        }

        func volverDeSubvistaIncidencias() {
            goToIncidenciasProceso()
        }

        func goToActualizarUsuario() {
            resetAllStates()
            showActualizarUsuario = true
            selectedTab = .user
        }

        func goToMensajes() {
            resetAllStates()
            showMensajes = true
            selectedTab = .user
        }

        func volverDeSubvistaUsuario() {
            goToUser()
        }
}
