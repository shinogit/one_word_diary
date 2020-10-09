# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 初期ユーザー
User.create!(email: 'a@a', password: 'aaaaaa', name: 'テスト名前a', nick_name: 'てすたーA', introduction: 'テスト名前aです。ニックネームはてすたーAです。4649!', is_deleted: false)
User.create!(email: 'b@b', password: 'bbbbbb', name: 'テスト名前bb', nick_name: 'てすたーBB', introduction: 'テスト名前bbです。ニックネームはてすたーBBです。4645?!', is_deleted: false)
User.create!(email: 'c@c', password: 'cccccc', name: 'テスト名前ccc', nick_name: 'てすたーCCC', introduction: 'テスト名前cccです。ニックネームはてすたーCCCです。4645!?!', is_deleted: false)

# 初期管理者
Admin.create!(email: 'z@z', password: 'zzzzzz', name: '管理者ZZZZ')

# 初期Word
