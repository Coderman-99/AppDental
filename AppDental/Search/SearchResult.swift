//
//  SearchResult.swift
//  AppDental
//
//  Created by Prum Munirak on 2022/6/26.
//

import Foundation
import CoreData
import SwiftUI

struct DisplaySearchResult: View{ //pass patient data to display function
    @State var image_prop_num : [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @Environment(\.managedObjectContext) var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \PatientData.name, ascending: true)],
        animation: .default)
    var patientname: FetchedResults<PatientData>
    var body: some View{
        NavigationView{
            List {
                ForEach(patientname, id: \.self){
                    username in
                    NavigationLink(destination: DisplayPatientData(cure_method: username.cure ?? "", date_come: username.date ?? Date(), photo: username.conindex ?? image_prop_num), label: {Text(username.name ?? "")})
                }
                .onDelete(perform: deleteItems)
            }
        }
        .navigationTitle(Text("List"))
    }
    
    private func deleteItems(offsets: IndexSet) { //delete data from CoreData
        withAnimation {
            offsets.map { patientname[$0] }.forEach(viewContext.delete)
            
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
}
