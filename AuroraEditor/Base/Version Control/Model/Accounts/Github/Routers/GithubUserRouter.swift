//
//  GithubUserRouter.swift
//  AuroraEditorModules/GitAccounts
//
//  Created by Nanshi Li on 2022/03/31.
//

import Foundation

enum GithubUserRouter: Router {
    case readAuthenticatedUser(GitConfiguration)
    case readUser(String, GitConfiguration)

    var configuration: GitConfiguration? {
        switch self {
        case let .readAuthenticatedUser(config): return config
        case let .readUser(_, config): return config
        }
    }

    var method: HTTPMethod {
        .GET
    }

    var encoding: HTTPEncoding {
        .url
    }

    var path: String {
        switch self {
        case .readAuthenticatedUser:
            return "user"
        case let .readUser(username, _):
            return "users/\(username)"
        }
    }

    var params: [String: Any] {
        [:]
    }
}
