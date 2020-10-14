# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# user
User.create!(email: 'a@a', password: 'aaaaaa', name: 'テスト名前a', nick_name: 'てすたーA', introduction: 'テスト名前aです。ニックネームはてすたーAです。4649!', is_deleted: false)
User.create!(email: 'b@b', password: 'bbbbbb', name: 'テスト名前bb', nick_name: 'てすたーBB', introduction: 'テスト名前bbです。ニックネームはてすたーBBです。4645?!', is_deleted: false)
User.create!(email: 'c@c', password: 'cccccc', name: 'テスト名前ccc', nick_name: 'てすたーCCC', introduction: 'テスト名前cccです。ニックネームはてすたーCCCです。4645!?!', is_deleted: false)
User.create!(email: 'd@d', password: 'dddddd', name: 'テスト名前dddd', nick_name: 'てすたーDDDD', introduction: 'テスト名前ddddです。ニックネームはてすたーDDDDです。今日は何曜日？', is_deleted: false)
User.create!(email: 'e@e', password: 'eeeeee', name: 'テスト名前eeeee', nick_name: 'てすたーEEEEE', introduction: 'テスト名前eeeeeです。ニックネームはてすたーEEEEEです。こんばんは', is_deleted: false)
User.create!(email: 'f@f', password: 'ffffff', name: 'テスト名前ffffff', nick_name: 'てすたーFFFFF', introduction: 'テスト名前ffffffです。ニックネームはてすたーFFFFFです。よろしくお願いします！', is_deleted: false)

# admin
Admin.create!(email: 'z@z', password: 'zzzzzz', name: '管理者ZZZZ')

# word
Word.create!(title: "A1のタイトル", body: "A1のひとこと", user_id: 1, start_time: "2020-10-05 10:00:00 +0900")
Word.create!(title: "A2のタイトル", body: "A2のひとこと", user_id: 1, start_time: "2020-10-06 10:00:00 +0900")
Word.create!(title: "A3のタイトル", body: "A3のひとこと", user_id: 1, start_time: "2020-10-07 10:00:00 +0900")
Word.create!(title: "A4のタイトル", body: "A4のひとこと", user_id: 1, start_time: "2020-10-08 10:00:00 +0900")
Word.create!(title: "A5のタイトル", body: "A5のひとこと", user_id: 1, start_time: "2020-10-09 10:00:00 +0900")
Word.create!(title: "A6のタイトル", body: "A6のひとこと", user_id: 1, start_time: "2020-10-10 10:00:00 +0900")
Word.create!(title: "B1のタイトル", body: "B1のひとこと", user_id: 2, start_time: "2020-10-06 10:00:00 +0900")
Word.create!(title: "B2のタイトル", body: "B2のひとこと", user_id: 2, start_time: "2020-10-07 10:00:00 +0900")
Word.create!(title: "B3のタイトル", body: "B3のひとこと", user_id: 2, start_time: "2020-10-08 10:00:00 +0900")
Word.create!(title: "C1のタイトル", body: "C1のひとこと", user_id: 3, start_time: "2020-10-05 10:00:00 +0900")
Word.create!(title: "C2のタイトル", body: "C2のひとこと", user_id: 3, start_time: "2020-10-06 10:00:00 +0900")