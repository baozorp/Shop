//
//  SectionName.swift
//  Spar
//
//  Created by Михаил Шекунов on 17.08.2023.
//

import SwiftUI

struct SectionName: View {
    
    @State var sectionName: String
    
    var body: some View{
        HStack{
            Text(sectionName)
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.leading)
            Spacer()
        }
        .padding(.top)
    }
}
