//
//  PatientData+CoreDataProperties.swift
//  AppDental
//
//  Created by Prum Munirak on 2022/6/28.
//
//

import Foundation
import CoreData


extension PatientData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PatientData> {
        return NSFetchRequest<PatientData>(entityName: "PatientData")
    }

    @NSManaged public var conindex: [Int]?
    @NSManaged public var constate: [String]?
    @NSManaged public var cure: String?
    @NSManaged public var date: Date?
    @NSManaged public var name: String?
    
    var warppedName: String{
        name ?? "Unknown"
    }
    var warppeDate: Date{
        date ?? Date()
    }
    var warppedCure: String{
        cure ?? "Unknown"
    }
    var warppedConstate: [String]{
        constate ?? []
    }
    var warppedConindex: [Int]{
        conindex ?? []
    }
}


extension PatientData : Identifiable {

}
