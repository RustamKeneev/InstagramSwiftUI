//
//  CircularProfileImageView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 24/5/24.
//

import SwiftUI
import Kingfisher

struct CircularProfileImageView: View {
    //MARK: - PROPERTIES
    let user: User
    let size: ProfileImageSize

    //MARK: - BODY
    var body: some View {
        if let imageUrl = user.profileImageUrl{
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        }else{
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        }
    }//: END BODY
}//: END CIRCULAR PROFILE IMAGE VIEW

//MARK: - PREVIEW
#Preview {
    CircularProfileImageView(user: User.MOCK_USERS[0], size: .large)
}
