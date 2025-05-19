//
//  IncidentService.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//


import Foundation

class IncidenciaService {
    let apiClient = APIClient()

    func getIncidencias(for userId: Int, completion: @escaping (Result<[IncidenciaUI], Error>) -> Void) {
        apiClient.get(path: "/incidencias") { (result: Result<[Incidencia], Error>) in
            switch result {
            case .success(let todas) :
                let filtradas = todas
                    .filter { $0.incidenciaUserId == userId }
                    .map { IncidenciaUI(from: $0) }
                completion(.success(filtradas))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

