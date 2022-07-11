//
//  DataFiller.swift
//  AppDental
//
//  Created by Prum Munirak on 2022/7/11.
//

import Foundation
import CoreData
import SwiftUI

struct FindPredicate: View { //search name filter
    @Environment(\.managedObjectContext) var viewContext
    @FetchRequest var items: FetchedResults<PatientData>
    var body: some View {
        List(items, id: \.self){
            username in
            NavigationLink(destination: DisplayPatientData(cure_method: username.warppedCure, date_come: Date(), photo: username.warppedConindex), label: {Text(username.warppedName)})
        }
    }
    
    init(filter: String){
        _items = FetchRequest<PatientData>(sortDescriptors: [], predicate: NSPredicate(format: "name contains %@", filter))
    }
}
