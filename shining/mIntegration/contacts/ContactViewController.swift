//
//  ContactViewController.swift
//  shining
//
//  Created by ying kit ng on 12/21/20.
//

import UIKit
import SwiftUI

import Contacts
import ContactsUI

func checkForContactsAccess(andThen f:(()->())? = nil) {
    let status = CNContactStore.authorizationStatus(for:.contacts)
    switch status {
    case .authorized:
        f?()
    case .notDetermined:
        CNContactStore().requestAccess(for:.contacts) { ok, err in
            if ok {
                DispatchQueue.main.async {
                    f?()
                }
            }
        }
    case .restricted:
        // do nothing
        break
    case .denied:
        // do nothing, or beg the user to authorize us in Settings
        print("denied")
        break
    @unknown default: fatalError()
    }
}

class ContactViewController: UIViewController, CNContactPickerDelegate, CNContactViewControllerDelegate  {
    
    @IBAction func lookUpContacts(_ sender: Any) {
        let picker = CNContactPickerViewController()
        picker.delegate = self
        do {
            picker.displayedPropertyKeys = [CNContactEmailAddressesKey]
            picker.predicateForEnablingContact = NSPredicate(format: "emailAddresses.@count > 0")
        }
        self.present(picker, animated:true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

struct ContactControllerRepresentation: UIViewControllerRepresentable {
    func makeUIViewController(context:UIViewControllerRepresentableContext<ContactControllerRepresentation>) -> ContactViewController{
        
       UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "contact") as! ContactViewController
        
//        let contact = ContactViewController()
//        return contact
        
        
    }
    
    func updateUIViewController(_ uiViewController: ContactViewController, context: UIViewControllerRepresentableContext<ContactControllerRepresentation>) {
        
    }
    
}

#if DEBUG
struct ContactControllerRepresentation_Previews: PreviewProvider {
  static var previews: some View {
    ContactControllerRepresentation().previewDevice("iPhone 11")
  }
}
#endif
