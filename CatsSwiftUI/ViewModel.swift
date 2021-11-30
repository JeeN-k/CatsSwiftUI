//
//  ViewModel.swift
//  CatsSwiftUI
//
//  Created by Oleg Stepanov on 30.11.2021.
//

import Foundation
import Combine
import SwiftUI

final class ViewModel: ObservableObject {
    @Published var cats: [Cat]
    let service = CatsService()
//    let task: AnyCancellable?
    
    init() {
        cats = service.cats
    }
    
}
