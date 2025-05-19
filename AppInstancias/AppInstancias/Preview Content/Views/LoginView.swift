//
//  LoginView.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//
import SwiftUI

struct LoginView: View {
    @ObservedObject var userVM: UserViewModel
    @ObservedObject var appState: AppStateViewModel
    
    var body: some View {
        VStack {
            TextField("Usuario", text: $userVM.username)
            SecureField("Contraseña", text: $userVM.password)
            Button("Aceptar") {
                userVM.login { success in
                    if success {
                        appState.isLoginVisible = false
                        appState.isHomeVisible = true
                        appState.selectedTab = .home
                    }
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
