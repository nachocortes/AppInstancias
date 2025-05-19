//
//  InstanciaUI.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//
import Foundation

struct IncidenciaUI: Codable, Identifiable, Equatable{
    var id: Int
    var titulo: String
    var descripcion: String
    var tipo: TipoIncidencia
    var estado: EstadoIncidencia
}


