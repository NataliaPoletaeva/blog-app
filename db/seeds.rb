# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Loid', photo: 'https://static.wikia.nocookie.net/spy-x-family9171/images/c/cd/Loid_Forger_Anime_3.png', bio: "Undercover spy from Westalis. But don't tell my wife and daughter", posts_counter: 0)
second_user = User.create(name: 'Yor', photo: 'https://static.wikia.nocookie.net/spy-x-family9171/images/5/5e/Yor_Forger_Anime.png', bio: "Undercover assasin. I kill bastards to make my country better. But don't tell my husband and daughter", posts_counter: 0)
third_user = User.create(name: 'Anya', photo: 'https://64.media.tumblr.com/1400e450c05222586e33e7c3febe2ee7/39645702c6b08fb7-d4/s400x600/9c2dcf783762d8354fb323e678a8e072b2610284.pnj', bio: "Undercover telepath. Please don't tell my mama and papa I don't want to go back to the ophranage!!!11!", posts_counter: 0)

Post.create(user_id: 1, title: 'Bye, Robert', text: 'Got new mission today. Where do i find a wife and a daughter in a week?')
Post.create(user_id: 1, title: 'Foster child', text: "Never mind, I've found a daughter. Wife is on the way. Operation Strix, let's go!")
Post.create(user_id: 2, title: 'Club 27', text: 'Carla invited me to the party today and told me to bring my boyfriend... Who?')
Post.create(user_id: 3, title: 'New daddy', text: "I have a papa now! He is a spy and he's so cool!!! Papa, buy me a lot of peanuts!")
Post.create(user_id: 1, title: 'Pretty lady', text: "Just proposed to a fellow customer of the atelier while some aims exploded bombs behind us. Feels good :)")
Post.create(user_id: 2, title: "I'm married?!", text: "NVM I just got a husband and Carla humiliated herself??? What a productive evening!")
Post.create(user_id: 3, title: 'MOM', text: "AN ASSASIN MOM I AM SO EXCITED!")
Post.create(user_id: 1, title: 'No more war', text: "My fake family is complete. Let's stop the war between the Westalis and Ostania!")
Post.create(user_id: 2, title: 'Wife skills', text: "Not only do I have a husband, but ALSO an adorable daughter? She's so perceptible it's like she can read minds...Hope she doesn't know I'm an assasin :(")
Post.create(user_id: 3, title: 'Mind reading', text: "Papa and mama think so loud...")
  
Comment.create(user_id: 2, post_id: 5, text: "So you think I'm pretty?...")
Comment.create(user_id: 1, post_id: 5, text: "You're the prettiest woman I have ever laid my eyes on")
Comment.create(user_id: 2, post_id: 5, text: "Loid, stop")
Comment.create(user_id: 3, post_id: 5, text: "Yes, they actually flirt. Yes, they are actually married")
Comment.create(user_id: 1, post_id: 5, text: "ANYA, GO TO YOUR ROOM")
Comment.create(user_id: 2, post_id: 5, text: "ANYA, GO TO YOUR ROOM")