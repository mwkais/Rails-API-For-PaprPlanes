# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
PostAccess.destroy_all
UserFriend.destroy_all

User.create!([{
  Name: 'Michael Kaiser',
  UserName: 'Mwkais',
  Email: 'mwkais@gmail.com',
  Password: 'mwk318',
  DateOfBirth: 3/18/92,
  ProfilePicUrl: 'http://coolwebsite.com'
},
{
  Name: 'Pat Back',
  UserName: 'pattyback',
  Email: 'pbackeris@gmail.com',
  Password: '1234',
  DateOfBirth: 5/23/93,
  ProfilePicUrl: 'http://coolwebsite.com'

},
{
  Name: 'ryan schroeder',
  UserName: 'rs',
  Email: 'rschroeder@gmail.com',
  Password: '0000',
  DateOfBirth: 8/10/91,
  ProfilePicUrl:'http://coolwebsite.com',

},
{
  Name: 'nicole tatum',
  UserName: 'nicool',
  Email: 'ntate@gmail.com',
  Password: 'michaelisthebest',
  DateOfBirth:8/22/95,
  ProfilePicUrl:'http://coolwebsite.com'
}])

Post.create!([{
  UserID: 0,
  Type: 0,
  Caption: 'look at this cool picture',
  Content: 'coolphotoURL',
  Counter: 5
},
{
  UserID: 2,
  Type: 1,
  Caption: 'going to chipotle',
  Content: 'Hey guys im going to chipotle!',
  Counter: 6
},
{
  UserID: 1,
  Type: 2,
  Caption: 'hahaha',
  Content: 'https://davidmles.com/seeding-database-rails/',
  Counter: 10
},
{
  UserID: 3,
  Type: 1,
  Caption: 'hey how are you doing',
  Content: 'when are we gonna go get chipotle too?',
  Counter: 25
},
{
  UserID: 0,
  Type: 0,
  Caption: "another cool picture coming your way",
  Content: "anothercoolpicURL",
  Counter: 2
},
{
  UserID: 3,
  Type: 2,
  Caption: 'great stuff',
  Content: 'this app must be made by some cool guys',
  Counter: 3
}])

PostAccess.create!([{
  UserID: 0,
  PostID: 0,
  FriendID: 1,
  Viewed: false
},
{
  UserID: 0,
  PostID: 0,
  FriendID: 2,
  Viewed: true
},
{
  UserID: 0,
  PostID: 0,
  FriendID: 3,
  Viewed: false
},
{
  UserID: 2,
  PostID: 1,
  FriendID: 0,
  Viewed: false
},
{
  UserID: 2,
  PostID: 1,
  FriendID: 1,
  Viewed: true
},
{
  UserID: 2,
  PostID: 1,
  FriendID: 2,
  Viewed: false
},
{
  UserID: 1,
  PostID: 2,
  FriendID: 2,
  Viewed: false
},
{
  UserID: 3,
  PostID: 3,
  FriendID: 0,
  Viewed: false
},
{
  UserID: 0,
  PostID: 4,
  FriendID: 1,
  Viewed: true
},
{
  UserID: 0,
  PostID: 4,
  FriendID: 2,
  Viewed: false
},
{
  UserID: 0,
  PostID: 4,
  FriendID: 3,
  Viewed: false
},
{
  UserID: 3,
  PostID: 5,
  FriendID: 0,
  Viewed: false
},
{
  UserID: 3,
  PostID: 5,
  FriendID: 1,
  Viewed: true

}])

UserFriend.create!([{
  UserID: 0,
  FriendID: 1,
  Pending: false
},
{
  UserID: 0,
  FriendID: 2,
  Pending: false
},
{
  UserID: 0,
  FriendID: 3,
  Pending: false
},
{
  UserID: 1,
  FriendID: 0,
  Pending: false
},
{
  UserID: 1,
  FriendID: 2,
  Pending: false
},
{
  UserID: 2,
  FriendID: 0,
  Pending: false
},
{
  UserID: 2,
  FriendID: 1,
  Pending: false
},
{
  UserID: 3,
  FriendID: 0,
  Pending: false
},
{
  UserID: 3,
  FriendID: 1,
  Pending: true
}])

p "Created #{User.count} users";
p "Created #{Post.count} posts";
p "Created #{PostAccess.count} post_accesses";
p "Created #{UserFriend.count} user_friends";
