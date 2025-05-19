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
        self.nombre = user.username // Ajusta si tienes campo nombre separado
        self.email = "sin-email@ejemplo.com" // O user.email si lo tienes
        self.primerApellido = "Apellido1" // Asigna si está en el JSON
        self.segundoApellido = "Apellido2"
    }
}

extension IncidenciaUI {
    init(from incidencia: Incidencia) {
        self.id = incidencia.id
        self.titulo = incidencia.nombre // o incidencia.titulo si lo tienes así
        self.descripcion = "Sin descripción" // si no hay campo en API, default
        self.tipo = .otros // o mapear si tienes un string como "pintura", etc.
        self.estado = .abierta // idem, default o decodifica si viene de la API
    }
}
