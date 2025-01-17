//
//  Job.swift
//  AuroraEditor
//
//  Created by Nanashi Li on 2022/09/13.
//  Copyright © 2022 Aurora Company. All rights reserved.
//

import Foundation

struct Job: Codable {
    let totalCount: Int
    let jobs: [Jobs]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case jobs
    }
}
