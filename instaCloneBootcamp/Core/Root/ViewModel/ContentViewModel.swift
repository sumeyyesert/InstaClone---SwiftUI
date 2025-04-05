//
//  ContentViewModel.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 6.04.2025.
//

import Foundation
import Firebase
import Combine
import FirebaseAuth

class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession
            .sink { [weak self] userSession in
                self?.userSession = userSession
            }
            .store(in: &cancellables)
    }
}

