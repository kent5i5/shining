//
//  ContentView.swift
//  shining
//
//  Created by ying kit ng on 12/5/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    @State var rGuess: Double
    @State var showAlert: Bool = false
    
    func computeResult() -> Double{
        let result = rGuess
        return Double(result)
    }
    
    var body: some View {
        
        HStack {
         
            VStack {
                
                Label("", systemImage: "42.circle")
                Text("Change amount of Red with the slider: \(Int(rGuess * 255.0))")
                ColorSlider(value: $rGuess, textColor: .red)
                Color(red: rGuess, green: rGuess, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                
                Text("Shining")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.0, opacity: 1.0))
                    .multilineTextAlignment(.center)
                
                Button(action: {self.showAlert = true}) {
                    Text("Alert")
                }.alert(isPresented: $showAlert){
                    Alert(title: Text("GG"), message: Text(String(computeResult())))
                }.padding()
                    
                    
                List {
                    ForEach(items) { item in
                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 1.0, green: 0.4, blue: 0.0, opacity: 1.0))
                    }
                    .onDelete(perform: deleteItems)
                }
                .padding()
                .toolbar {
                    #if os(iOS)
                    EditButton()
                    #endif

                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            
        }
        
        
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

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

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

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

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(rGuess: 0.3).previewDevice("iPhone 11").environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            ContentView(rGuess: 0.8).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}

struct ColorSlider: View {
    
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value)
            Text("255").foregroundColor(textColor)
        }
        
    }
}
