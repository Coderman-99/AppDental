//
//  Showdata.swift
//  AppDental
//
//  Created by Prum Munirak on 2022/6/22.


import CoreData
import SwiftUI

struct DisplayPatientsName: View{ //show all name in view tab
    @Environment(\.managedObjectContext) var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \PatientData.name, ascending: true)],
        animation: .default)
    var info: FetchedResults<PatientData>
    var body: some View{
        ScrollView(.vertical){
            ForEach(info, id: \.self){
                username in
                Text("\(username.name!)")
            }
        }
    }
}
