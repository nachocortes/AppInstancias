//
//  TipoIncidencia.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//
import Foundation

enum TipoIncidencia: String, CaseIterable, Identifiable, Codable {
    case electricidad, fontaneria, carpinteria, pintura, otros

    var id: String { rawValue }

    var nombreVisible: String {
        switch self {
        case .electricidad: return "Electricidad"
        case .fontaneria: return "Fontanería"
        case .carpinteria: return "Carpintería"
        case .pintura: return "Pintura"
        case .otros: return "Otros"
        }
    }
}

