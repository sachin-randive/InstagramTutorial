//
//  FirebaseConstants.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 06/03/26.
//

import Firebase

struct FirestoreConstants {
    static let Root = Firestore.firestore()
    
    static let UsersCollection = Root.collection("users")
    
    static let PostCollection = Root.collection("posts")
    
    static let NotificationCollection = Root.collection("notifications")

}
