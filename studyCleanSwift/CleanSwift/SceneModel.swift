//
//  SceneModel.swift
//  studyCleanSwift
//
//  Created by Luca Hummel on 25/01/23.
//

import Foundation

struct SceneModel {
    struct Fetch {
        struct Request {
            var itemId = 0
            var keyword: String?
            var count: String?
        }
        
        struct Response {
            var title: String?
            var isError: Bool
            var message: String?
        }
        
        struct ViewModel {
            var name: String?
            var date: String?
            var desc: String?
            var isError: Bool
            var message: String?
        }
    }
}
