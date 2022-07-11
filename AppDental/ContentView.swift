//
//  ContentView.swift
//  dental
//
//  Created by Prum Munirak on 2022/5/21.
//

import SwiftUI
import CoreData
import UIKit.UIImage

//struct Appface: View {
//    var body: some View {
//        NavigationView{
//            VStack{
//                Image("tooth-vector-icon")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .navigationTitle("Title screen")
//                    .offset(y:-50)
//                Text("កំណត់ត្រាអ្នកជំងឺ")
//                    .font(.largeTitle)
//                    .frame(width: 300, height: 55)
//                    .background(Color.yellow)
//                    .foregroundColor(.blue)
//                    .cornerRadius(10)
//                    .padding()
//                    .offset(y:-80)
//                NavigationLink(destination: Appcontent(), label: {
//                    Text("ចូល")
//                        .frame(width: 100, height: 50)
//                        .background(Color.green)
//                        .foregroundColor(.black)
//                        .cornerRadius(50)
//                        .offset(y:-50)
//                })
//            }
//        }
//    }
//}

struct ContenView: View{
    @State private var selection = 0
    
    var body: some View{
        TabView(selection: $selection){
            DisplaySearchResult()
                .tabItem{
                    VStack{
                        Image(systemName: "multiply.circle.fill")
                        Text("List")
                    }
                }
                .tag(1)
            Finddata()
                .tabItem{
                    VStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .tag(2)
            Storedata()
                .tabItem{
                    VStack{
                        Image(systemName: "rectangle.grid.1x2")
                        Text("Store")
                    }
                }
                .tag(3)
        }
    }
}

//struct Appcontent: View {
//    var body: some View {
//        VStack{
//            Spacer()
//            NavigationLink(destination: Finddata(), label: {Text("1.find patient's data")
//                    .font(.title)
//                .multilineTextAlignment(.center)})
//            Spacer()
//            NavigationLink(destination: Storedata(), label: {Text("2.Store patient's data")
//                    .font(.title)
//                .multilineTextAlignment(.center)})
//            Spacer()
//        }
//    }
//}

struct Storedata: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \PatientData.name, ascending: true)],
        animation: .default)
    private var items: FetchedResults<PatientData>
    @AppStorage("name") var savedata : String = ""
    @State var user : String = ""
    @State var cure_method = ""
    @State var image_prop : [String] = ["", "_allblack", "_blackhead", "_blackleg", "_cross"] //tooth condition mark
    @State var image_prop_num : [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @State var picture = "tooth"
    @State var conditions : [String] = ["headbad", "legbad", "allbad", "pullout"]
    var body: some View {
        Form{
            Section("basic information") { //name and date section fields
                TextField("Name:", text: $user)
            }
            ScrollView(.vertical){ //display tooth condition selection option
                ScrollView(.horizontal){
                    HStack{
                        HStack{
                            Button(action: {
                                if image_prop_num[0] < 4{
                                    image_prop_num[0] += 1
                                }
                                else { image_prop_num [0] = 0
                                }
                            }, label: {Image("tooth1"+image_prop[image_prop_num[0]])
                                    .resizable()
                                    .frame(width: 45, height: 100)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:22)
                            })
                            Button(action: {
                                if image_prop_num[1] < 4{
                                    image_prop_num[1] += 1
                                }
                                else { image_prop_num [1] = 0
                                }
                            }, label: {Image("tooth2"+image_prop[image_prop_num[1]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:16)
                            })
                            Button(action: {
                                if image_prop_num[2] < 4{
                                    image_prop_num[2] += 1
                                }
                                else { image_prop_num [2] = 0
                                }
                            }, label: {Image("tooth3"+image_prop[image_prop_num[2]])
                                    .resizable()
                                    .frame(width: 50, height: 125)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:10)
                            })
                            Button(action: {
                                if image_prop_num[3] < 4{
                                    image_prop_num[3] += 1
                                }
                                else { image_prop_num [3] = 0
                                }
                            }, label: {Image("tooth4"+image_prop[image_prop_num[3]])
                                    .resizable()
                                    .frame(width: 45, height: 135)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:7)
                            })
                            Button(action: {
                                if image_prop_num[4] < 4{
                                    image_prop_num[4] += 1
                                }
                                else { image_prop_num [4] = 0
                                }
                            }, label: {Image("tooth5"+image_prop[image_prop_num[4]])
                                    .resizable()
                                    .frame(width: 45, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:2)
                            })
                            Button(action: {
                                if image_prop_num[5] < 4{
                                    image_prop_num[5] += 1
                                }
                                else { image_prop_num [5] = 0
                                }
                            }, label: {Image("tooth6"+image_prop[image_prop_num[5]])
                                    .resizable()
                                    .frame(width: 45, height: 155)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-3)
                            })
                            Button(action: {
                                if image_prop_num[6] < 4{
                                    image_prop_num[6] += 1
                                }
                                else { image_prop_num [6] = 0
                                }
                            }, label: {Image("tooth7"+image_prop[image_prop_num[6]])
                                    .resizable()
                                    .frame(width: 30, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:2)
                            })
                            Button(action: {
                                if image_prop_num[7] < 4{
                                    image_prop_num[7] += 1
                                }
                                else { image_prop_num [7] = 0
                                }
                            }, label: {Image("tooth8"+image_prop[image_prop_num[7]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:17)
                            })
                        }
                        Divider()
                        HStack{
                            Button(action: {
                                if image_prop_num[8] < 4{
                                    image_prop_num[8] += 1
                                }
                                else { image_prop_num [8] = 0
                                }
                            }, label: {Image("tooth9"+image_prop[image_prop_num[8]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:17)
                            })
                            Button(action: {
                                if image_prop_num[9] < 4{
                                    image_prop_num[9] += 1
                                }
                                else {image_prop_num [9] = 0
                                }
                            }, label: {Image("tooth10"+image_prop[image_prop_num[9]])
                                    .resizable()
                                    .frame(width: 30, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:2)
                            })
                            Button(action: {
                                if image_prop_num[10] < 4{
                                    image_prop_num[10] += 1
                                }
                                else { image_prop_num [10] = 0
                                }
                            }, label: {Image("tooth11"+image_prop[image_prop_num[10]])
                                    .resizable()
                                    .frame(width: 45, height: 155)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-3)
                            })
                            Button(action: {
                                if image_prop_num[11] < 4{
                                    image_prop_num[11] += 1
                                }
                                else { image_prop_num [11] = 0
                                }
                            }, label: {Image("tooth12"+image_prop[image_prop_num[11]])
                                    .resizable()
                                    .frame(width: 45, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:2)
                            })
                            Button(action: {
                                if image_prop_num[12] < 4{
                                    image_prop_num[12] += 1
                                }
                                else { image_prop_num [12] = 0
                                }
                            }, label: {Image("tooth13"+image_prop[image_prop_num[12]])
                                    .resizable()
                                    .frame(width: 45, height: 135)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:7)
                            })
                            Button(action: {
                                if image_prop_num[13] < 4{
                                    image_prop_num[13] += 1
                                }
                                else { image_prop_num [13] = 0
                                }
                            }, label: {Image("tooth14"+image_prop[image_prop_num[13]])
                                    .resizable()
                                    .frame(width: 50, height: 125)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:10)
                            })
                            Button(action: {
                                if image_prop_num[14] < 4{
                                    image_prop_num[14] += 1
                                }
                                else { image_prop_num [14] = 0
                                }
                            }, label: {Image("tooth15"+image_prop[image_prop_num[14]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:16)
                            })
                            Button(action: {
                                if image_prop_num[15] < 4{
                                    image_prop_num[15] += 1
                                }
                                else { image_prop_num [15] = 0
                                }
                            }, label: {Image("tooth16"+image_prop[image_prop_num[15]])
                                    .resizable()
                                    .frame(width: 45, height: 100)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:22)
                            })
                        }
                    }
                }
                ScrollView(.horizontal){
                    HStack{
                        HStack{
                            Button(action: {
                                if image_prop_num[16] < 4{
                                    image_prop_num[16] += 1
                                }
                                else { image_prop_num [16] = 0
                                }
                            }, label: {Image("tooth17"+image_prop[image_prop_num[16]])
                                    .resizable()
                                    .frame(width: 45, height: 100)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-22)
                            })
                            Button(action: {
                                if image_prop_num[17] < 4{
                                    image_prop_num[17] += 1
                                }
                                else { image_prop_num [17] = 0
                                }
                            }, label: {Image("tooth18"+image_prop[image_prop_num[17]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-16)
                            })
                            Button(action: {
                                if image_prop_num[18] < 4{
                                    image_prop_num[18] += 1
                                }
                                else { image_prop_num [18] = 0
                                }
                            }, label: {Image("tooth19"+image_prop[image_prop_num[18]])
                                    .resizable()
                                    .frame(width: 50, height: 125)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-10)
                            })
                            Button(action: {
                                if image_prop_num[19] < 4{
                                    image_prop_num[19] += 1
                                }
                                else { image_prop_num [19] = 0
                                }
                            }, label: {Image("tooth20"+image_prop[image_prop_num[19]])
                                    .resizable()
                                    .frame(width: 45, height: 135)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-7)
                            })
                            Button(action: {
                                if image_prop_num[20] < 4{
                                    image_prop_num[20] += 1
                                }
                                else { image_prop_num[20] = 0
                                }
                            }, label: {Image("tooth21"+image_prop[image_prop_num[20]])
                                    .resizable()
                                    .frame(width: 45, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-2)
                            })
                            Button(action: {
                                if image_prop_num[21] < 4{
                                    image_prop_num[21] += 1
                                }
                                else { image_prop_num[21] = 0
                                }
                            }, label: {Image("tooth22"+image_prop[image_prop_num[21]])
                                    .resizable()
                                    .frame(width: 45, height: 155)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:3)
                            })
                            Button(action: {
                                if image_prop_num[22] < 4{
                                    image_prop_num[22] += 1
                                }
                                else { image_prop_num [22] = 0
                                }
                            }, label: {Image("tooth23"+image_prop[image_prop_num[22]])
                                    .resizable()
                                    .frame(width: 30, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-2)
                            })
                            Button(action: {
                                if image_prop_num[23] < 4{
                                    image_prop_num[23] += 1
                                }
                                else { image_prop_num [23] = 0
                                }
                            }, label: {Image("tooth24"+image_prop[image_prop_num[23]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-17)
                            })
                        }
                        Divider()
                        HStack{
                            Button(action: {
                                if image_prop_num[24] < 4{
                                    image_prop_num[24] += 1
                                }
                                else { image_prop_num [24] = 0
                                }
                            }, label: {Image("tooth25"+image_prop[image_prop_num[24]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-17)
                            })
                            Button(action: {
                                if image_prop_num[25] < 4{
                                    image_prop_num[25] += 1
                                }
                                else {image_prop_num [25] = 0
                                }
                            }, label: {Image("tooth26"+image_prop[image_prop_num[25]])
                                    .resizable()
                                    .frame(width: 30, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-2)
                            })
                            Button(action: {
                                if image_prop_num[26] < 4{
                                    image_prop_num[26] += 1
                                }
                                else { image_prop_num [26] = 0
                                }
                            }, label: {Image("tooth27"+image_prop[image_prop_num[26]])
                                    .resizable()
                                    .frame(width: 45, height: 155)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:3)
                            })
                            Button(action: {
                                if image_prop_num[27] < 4{
                                    image_prop_num[27] += 1
                                }
                                else { image_prop_num [27] = 0
                                }
                            }, label: {Image("tooth28"+image_prop[image_prop_num[27]])
                                    .resizable()
                                    .frame(width: 45, height: 145)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-2)
                            })
                            Button(action: {
                                if image_prop_num[28] < 4{
                                    image_prop_num[28] += 1
                                }
                                else { image_prop_num [28] = 0
                                }
                            }, label: {Image("tooth29"+image_prop[image_prop_num[28]])
                                    .resizable()
                                    .frame(width: 45, height: 135)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-7)
                            })
                            Button(action: {
                                if image_prop_num[29] < 4{
                                    image_prop_num[29] += 1
                                }
                                else { image_prop_num [29] = 0
                                }
                            }, label: {Image("tooth30"+image_prop[image_prop_num[29]])
                                    .resizable()
                                    .frame(width: 50, height: 125)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-10)
                            })
                            Button(action: {
                                if image_prop_num[30] < 4{
                                    image_prop_num[30] += 1
                                }
                                else { image_prop_num [30] = 0
                                }
                            }, label: {Image("tooth31"+image_prop[image_prop_num[30]])
                                    .resizable()
                                    .frame(width: 45, height: 115)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-16)
                            })
                            Button(action: {
                                if image_prop_num[31] < 4{
                                    image_prop_num[31] += 1
                                }
                                else { image_prop_num [31] = 0
                                }
                            }, label: {Image("tooth32"+image_prop[image_prop_num[31]])
                                    .resizable()
                                    .frame(width: 45, height: 100)
                                    .aspectRatio(1/1, contentMode: .fit)
                                    .offset(y:-22)
                            })
                        }
                    }
                }
            }
            Section("Cure description:"){
                TextEditor(text: $cure_method)
            }
            Button(action: {
                addData(username: user, index: image_prop_num, howCure: cure_method, dateCome: Date())
            },
                   label: {Text("save")})
        }
    }
    
    private func addData(username: String, index: [Int], howCure: String, dateCome: Date) { //save data into CoreData
        let nameData = PatientData(context: viewContext)
        nameData.name = username
        nameData.date = dateCome
        nameData.cure = howCure
        nameData.conindex = index
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Appface()
        // Appcontent()
        //Finddata()
        ContenView()
            .previewInterfaceOrientation(.portrait)
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}




