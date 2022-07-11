//
//  SearchBar.swift
//  AppDental
//
//  Created by Prum Munirak on 2022/6/26.
//

import Foundation
import SwiftUI

struct Finddata: View { //search view tab
    @State var name: String = ""
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section{
                        TextField("Input name:", text: $name)
                            .navigationTitle("Finder")
                    }
                    NavigationLink(destination: FindPredicate(filter: name), label: {Text("Search")})
                }
            }
        }
    }
}




