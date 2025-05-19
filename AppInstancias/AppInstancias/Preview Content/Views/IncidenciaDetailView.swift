//
//  IncidenciaDetailView.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import SwiftUI

struct IncidenciaDetailView: View {
    @State var incidencia: Incidencia

    var body: some View {
        VStack {
            Text("Tipo: \(incidencia.tipo)")
            Text("Descripción: \(incidencia.descripcion)")
            EditarEstadoView(estado: $incidencia.estado)
        }
        .padding()
    }
}
