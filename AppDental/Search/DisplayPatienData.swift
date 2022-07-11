//
//  DisplayPatienData.swift
//  AppDental
//
//  Created by Prum Munirak on 2022/6/26.
//

import Foundation
import CoreData
import SwiftUI

struct DisplayPatientData: View{ //displayy data of a name 
    @State var image_prop : [String] = ["", "_allblack", "_blackhead", "_blackleg", "_cross"]
    @Environment(\.managedObjectContext) var viewContext
    var cure_method: String
    var date_come: Date
    var photo: [Int]
    var body: some View{
        Form{
            Text("\(date_come)")
            Text(cure_method)
            ScrollView(.vertical){
                ScrollView(.horizontal){
                    HStack{
                        HStack{
                            Image("tooth1"+image_prop[photo[0]])
                                .resizable()
                                .frame(width: 45, height: 100)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:22)
                            Image("tooth2"+image_prop[photo[1]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:16)
                            Image("tooth3"+image_prop[photo[2]])
                                .resizable()
                                .frame(width: 50, height: 125)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:10)
                            Image("tooth4"+image_prop[photo[3]])
                                .resizable()
                                .frame(width: 45, height: 135)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:7)
                            Image("tooth5"+image_prop[photo[4]])
                                .resizable()
                                .frame(width: 45, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:2)
                            Image("tooth6"+image_prop[photo[5]])
                                .resizable()
                                .frame(width: 45, height: 155)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-3)
                            Image("tooth7"+image_prop[photo[6]])
                                .resizable()
                                .frame(width: 30, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:2)
                            Image("tooth8"+image_prop[photo[7]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:17)
                            
                        }
                        Divider()
                        HStack{
                            Image("tooth9"+image_prop[photo[8]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:17)
                            Image("tooth10"+image_prop[photo[9]])
                                .resizable()
                                .frame(width: 30, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:2)
                            Image("tooth11"+image_prop[photo[10]])
                                .resizable()
                                .frame(width: 45, height: 155)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-3)
                            Image("tooth12"+image_prop[photo[11]])
                                .resizable()
                                .frame(width: 45, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:2)
                            Image("tooth13"+image_prop[photo[12]])
                                .resizable()
                                .frame(width: 45, height: 135)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:7)
                            Image("tooth14"+image_prop[photo[13]])
                                .resizable()
                                .frame(width: 50, height: 125)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:10)
                            Image("tooth15"+image_prop[photo[14]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:16)
                            Image("tooth16"+image_prop[photo[15]])
                                .resizable()
                                .frame(width: 45, height: 100)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:22)
                            
                        }
                    }
                }
                ScrollView(.horizontal){
                    HStack{
                        HStack{
                            Image("tooth17"+image_prop[photo[16]])
                                .resizable()
                                .frame(width: 45, height: 100)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-22)
                            Image("tooth18"+image_prop[photo[17]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-16)
                            Image("tooth19"+image_prop[photo[18]])
                                .resizable()
                                .frame(width: 50, height: 125)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-10)
                            Image("tooth20"+image_prop[photo[19]])
                                .resizable()
                                .frame(width: 45, height: 135)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-7)
                            Image("tooth21"+image_prop[photo[20]])
                                .resizable()
                                .frame(width: 45, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-2)
                            Image("tooth22"+image_prop[photo[21]])
                                .resizable()
                                .frame(width: 45, height: 155)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:3)
                            Image("tooth23"+image_prop[photo[22]])
                                .resizable()
                                .frame(width: 30, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-2)
                            Image("tooth24"+image_prop[photo[23]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-17)
                            
                        }
                        Divider()
                        HStack{
                            Image("tooth25"+image_prop[photo[24]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-17)
                            Image("tooth26"+image_prop[photo[25]])
                                .resizable()
                                .frame(width: 30, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-2)
                            Image("tooth27"+image_prop[photo[26]])
                                .resizable()
                                .frame(width: 45, height: 155)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:3)
                            Image("tooth28"+image_prop[photo[27]])
                                .resizable()
                                .frame(width: 45, height: 145)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-2)
                            Image("tooth29"+image_prop[photo[28]])
                                .resizable()
                                .frame(width: 45, height: 135)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-7)
                            Image("tooth30"+image_prop[photo[29]])
                                .resizable()
                                .frame(width: 50, height: 125)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-10)
                            Image("tooth31"+image_prop[photo[30]])
                                .resizable()
                                .frame(width: 45, height: 115)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-16)
                            Image("tooth32"+image_prop[photo[31]])
                                .resizable()
                                .frame(width: 45, height: 100)
                                .aspectRatio(1/1, contentMode: .fit)
                                .offset(y:-22)
                        }
                    }
                }
            }
        }
    }
}
