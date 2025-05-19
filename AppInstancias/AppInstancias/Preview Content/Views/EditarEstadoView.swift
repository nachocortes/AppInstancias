//
//  EditarEstadoView.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import SwiftUI

struct EditarEstadoView: View {
    @Binding var estado: EstadoIncidencia

    var body: some View {
        Form {
            Section(header: Text("Estado actual")) {
                Text(estado.descripcion)
            }

            Section(header: Text("Cambiar estado")) {
                Picker("Estado", selection: $estado) {
                    Text("Abierta").tag(EstadoIncidencia.abierta)
                    Text("Cerrada - Reparada").tag(EstadoIncidencia.cerradaReparada)
                    Text("Cerrada - No reparada").tag(EstadoIncidencia.cerradaNoReparada)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}
