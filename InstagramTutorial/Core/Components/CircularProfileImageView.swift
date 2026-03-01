//
//  CircularProfileImageView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 28/02/26.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize  {
    case xSmall
    case small
    case medium
    case large
    
    var dimension: CFloat {
        switch self {
        case .xSmall:
            return 40
        case .small:
            return 48
        case .medium:
            return 64
        case .large:
            return 80
        }
    }
}

struct CircularProfileImageView: View {
    let user: User
    let size: ProfileImageSize
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: CGFloat(size.dimension), height: CGFloat(size.dimension))
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: CGFloat(size.dimension), height: CGFloat(size.dimension))
                .clipShape(Circle())
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USERS[0], size: .large)
}
