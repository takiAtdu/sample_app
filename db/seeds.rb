# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Player.create(name: "船水颯人")
Player.create(name: "上松俊貴")
Player.create(name: "上岡俊介")
Player.create(name: "広岡宙")

Tournament.create(year: 2022, tournament: "天皇杯")
Tournament.create(year: 2021, tournament: "天皇杯")

Movie.create(tournament_id: 1, movie: "https://youtu.be/6btSCZE2nps", player_a_id: 1, player_b_id: 2, player_c_id: 3, player_d_id: 4)

From.create(player_id: 1, from: "早稲田大学")
From.create(player_id: 1, from: "東北高校")
From.create(player_id: 2, from: "早稲田大学")
From.create(player_id: 3, from: "同志社大学")
From.create(player_id: 3, from: "上宮高校")
From.create(player_id: 4, from: "上宮高校")