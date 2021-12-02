//
//  CatsViewModel.swift
//  CatsSwiftUI
//
//  Created by Oleg Stepanov on 30.11.2021.
//

import Foundation
import SwiftUI

final class CatsViewModel: ObservableObject {
    @Published var cats: [Cat] = [ Cat(photoName: "cat0"),
                                   Cat(photoName: "cat1"),
                                   Cat(photoName: "cat2"),
                                   Cat(photoName: "cat3"),
                                   Cat(photoName: "cat4"),
                                   Cat(photoName: "cat5"),
                                   Cat(photoName: "cat6")]
    
    @Published var scale: CGFloat = 0.8
    @Published var selectedPhoto: String? = nil
    @Published var selection: String? = nil
    
    
    func photoScale(_ selected: Cat) -> CGFloat {
        if selected.photoName == selectedPhoto {
            return 1
        } else {
            return 0.7
        }
    }
    
    func selectPhoto(_ selected: Cat) {
        if selectedPhoto == selected.photoName {
            selectedPhoto = nil
            return
        }
        selectedPhoto = selected.photoName
    }
    
    
}
