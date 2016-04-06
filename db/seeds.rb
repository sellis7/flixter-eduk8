User.create!([
  {email: "teacher1@email.net", encrypted_password: "$2a$10$yFrvRxejTr/fT/fnISe/PeFE9h6WWUgq26NaxTwySmLW2ID8Fess.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-04-06 16:24:55", last_sign_in_at: "2016-04-06 15:26:16", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "teacher2@email.net", encrypted_password: "$2a$10$9ppeHHAHlVFSIUcJhiZWYOdtua7RLO6k9UuPpWbl5oucm5kor0dXa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-04-06 18:05:34", last_sign_in_at: "2016-04-06 16:15:00", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "student1@email.com", encrypted_password: "$2a$10$Yc240IKRjePqlhthVmhq2uQjYU9yfGPCGKcuLjG4pz9ghU9bTYX1y", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-04-06 21:28:14", last_sign_in_at: "2016-04-06 19:12:30", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "student2@email.com", encrypted_password: "$2a$10$/6qz1whiXS5QwqT4SuJo/uEv.Xa/hU37p3i8uL4Tw8WxAhQz7MORK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-04-06 21:37:37", last_sign_in_at: "2016-04-06 19:12:57", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Course.create!([
  {title: "Rebuilding/restoring a Carter BBD Carburetor", description: "If you owned a Chrysler vehicle that had a slant 6 engine in it as I had, at one point, you are going to need to rebuild the carb for maximum performance. I will explain (in brief detail) how this is done.", cost: "20.0", user_id: 5, image: "IMG_2566.jpg"},
  {title: "Animate using Adobe Photoshop", description: "There are so many things a user is capable of doing with Photoshop! Though it would seem it is mostly used as a photo retouching application, many artists use Photoshop as a tool to create custom and concept artwork, or to develop and establish websites. But you can create animations with it, as well! You are limited only by your imagination... and time. Yeah – that definitely always comes into play, too.", cost: "99.0", user_id: 6, image: "montage.jpg"},
  {title: "Make a vector graphic based promo short", description: "Having always loved dynamic art and content, it should be no surprise that my first explorations were with animation. It seemed the natural direction to take following in fine art capabilities. Educated first in traditional animation, I later pursued computer animation using 3ds Max, Autodesk Maya and Adobe After Effects. I learned it was amazing what one could accomplish with these tools.", cost: "75.5", user_id: 6, image: "storybrd.jpg"}
])
Enrollment.create!([
  {user_id: 7, course_id: 2},
  {user_id: 8, course_id: 4},
  {user_id: 8, course_id: 5}
])
Lesson.create!([
  {title: "Carefully removing the carburetor", subtitle: "Lesson 1", section_id: 3, video: "ShortenedAnimation.mp4", row_order: 0},
  {title: "Disassembly with extra care of delicate jets", subtitle: "Lesson 2", section_id: 3, video: "dusterAnimate.mp4", row_order: 4194304},
  {title: "Establish and maintain a clean workspace", subtitle: "Lesson 1", section_id: 4, video: "RoboWalk1-noir.mp4", row_order: 0},
  {title: "Acquiring replacement parts", subtitle: "Lesson 2", section_id: 4, video: "RoboWalk2-stairs.mp4", row_order: 4194304},
  {title: "Replacement and alignment of jets and float", subtitle: "Lesson 3", section_id: 4, video: "ChessSetAnimated.mp4", row_order: 6291456},
  {title: "Checking that your work paid off", subtitle: "Lesson 1", section_id: 5, video: "AlienBarnstorming.mp4", row_order: 0},
  {title: "Setting up your keyframes and start recording", subtitle: "Most boring piece you'll ever create", section_id: 6, video: "Paths.mp4", row_order: 0},
  {title: "Manipulating and layering images for 3D effect", subtitle: "3D effect using images, distortion & filters", section_id: 7, video: "12Working.mp4", row_order: 0},
  {title: "Vector graphics from raster images", subtitle: "Convert photos into Illustrator art", section_id: 8, video: "SVA-promo.mp4", row_order: 0}
])
Section.create!([
  {title: "The Rebuild", course_id: 2, row_order: -6291455},
  {title: "Bench-testing", course_id: 2, row_order: 1048576},
  {title: "Removal and dismantling", course_id: 2, row_order: -7340031},
  {title: "Animate completely menial tasks", course_id: 4, row_order: 0},
  {title: "Create projects with a bit more intent", course_id: 4, row_order: 4194304},
  {title: "After Effects short as promo for SVA", course_id: 5, row_order: 0}
])
