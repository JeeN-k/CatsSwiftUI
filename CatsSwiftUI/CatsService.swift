//
//  CatsService.swift
//  CatsSwiftUI
//
//  Created by Oleg Stepanov on 30.11.2021.
//

import Foundation
import Combine

class CatsService {
    
    let cats = [
        Cat(photoName: "cat0"),
        Cat(photoName: "cat1"),
        Cat(photoName: "cat2"),
        Cat(photoName: "cat3"),
        Cat(photoName: "cat4"),
        Cat(photoName: "cat5"),
        Cat(photoName: "cat6")
    ]
    
//    func fetchCat() -> AnyPublisher<[Cat], Never> {
//        return cats.publisher.eraseToAnyPublisher()
//    }
}
