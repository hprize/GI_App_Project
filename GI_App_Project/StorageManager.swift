//
//  StorageManager.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/06/09.
//



import Foundation
import FirebaseStorage

final class StorageManager {
    static let shared = StorageManager()
    private init() {}
    let storage = Storage.storage().reference()
    
    func saveImage(data: Data) async throws ->(path: String, name: String) {
        let meta = StorageMetadata()
        meta.contentType = "image/png"
        
        let path = "profileImage/\(UUID().uuidString).png"
        let returnedMetaData = try await storage.child(path).putDataAsync(data)
        
        guard let returnedPath = returnedMetaData.path, let returnedName = returnedMetaData.name else {
            throw URLError(.badServerResponse)
        }
        
        return (returnedPath, returnedName)
    }
}


