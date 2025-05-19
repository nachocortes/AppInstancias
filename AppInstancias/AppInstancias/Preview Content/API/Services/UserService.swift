//
//  AuthService.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import Foundation

enum UserError: Error {
    case network(Error)
    case invalidCredentials
}

class UserService {
    let apiClient = APIClient()

    func login(username: String, password: String, completion: @escaping (Result<UserUI, UserError>) -> Void) {
        apiClient.get(path: "/users") { (result: Result<[User], Error>) in
            switch result {
            case .success(let users):
                if let matchedUser = users.first(where: { $0.username == username && $0.password == password }) {
                    let userUI = UserUI(from: matchedUser) // 🔁 transformación al modelo de UI
                    completion(.success(userUI))
                } else {
                    completion(.failure(.invalidCredentials))
                }
            case .failure(let error):
                completion(.failure(.network(error)))
            }
        }
    }
}

