//
//  Mappers.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import Foundation

extension UserUI {
    init(from user: User) {
        self.id = user.id
        self.nombre = user.username
        self.email = "sin-email@ejemplo.com"
        self.primerApellido = "Apellido1"
        self.segundoApellido = "Apellido2"
    }
}

extension IncidenciaUI {
    init(from incidencia: Incidencia) {
        self.id = incidencia.id
        self.titulo = incidencia.nombre
        self.descripcion = "Sin descripción"
        self.tipo = .otros
        self.estado = .abierta
    }
}
