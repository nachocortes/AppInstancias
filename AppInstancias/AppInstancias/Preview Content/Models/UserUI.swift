//
//  UserUI.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//
import Foundation

struct UserUI: Identifiable, Codable, Equatable {
    let id: Int
    let nombre: String
    let email: String
    var primerApellido: String
    var segundoApellido: String
}

