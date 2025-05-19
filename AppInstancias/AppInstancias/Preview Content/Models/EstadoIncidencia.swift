//
//  EstadoIncidencia.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//
import Foundation

enum EstadoIncidencia: String, Codable {
    case abierta
    case cerradaReparada
    case cerradaNoReparada

    var descripcion: String {
        switch self {
        case .abierta: return "Abierta"
        case .cerradaReparada: return "Cerrada - Reparada"
        case .cerradaNoReparada: return "Cerrada - No Reparada"
        }
    }
}

