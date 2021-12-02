//
//  CatDetail.swift
//  CatsSwiftUI
//
//  Created by Oleg Stepanov on 30.11.2021.
//

import SwiftUI

struct CatDetail: View {
    var photoName: String
    var body: some View {
        Image(photoName)
    }
}

struct CatDetail_Previews: PreviewProvider {
    static var previews: some View {
        CatDetail(photoName: "")
    }
}
