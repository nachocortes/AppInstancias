//
//  Incidencia.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import Foundation

struct Incidencia: Codable, Identifiable, Equatable {
    let id: Int
    let nombre: String
    let incidenciaUserId: Int
}
