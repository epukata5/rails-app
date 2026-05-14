# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recruitment.create!([{"id":1,"category":"engineer","salary":600,"title":"経験者歓迎！大手企業でのWebエンジニア募集","created_at":"2026-05-05 08:13:38.778868+00"},{"id":2,"category":"sales","salary":350,"title":"未経験OK！営業アシスタント急募","created_at":"2026-05-05 08:14:06.443556+00"},{"id":3,"category":"marketing","salary":800,"title":"グローバル企業でのマーケティングマネージャー","created_at":"2026-05-05 08:15:33.161355+00"},{"id":4,"category":"design","salary":550,"title":"UI/UXデザイナー募集！急成長中のスタートアップ","created_at":"2026-05-05 08:16:10.148113+00"},{"id":5,"category":"manufacturing","salary":650,"title":"大手製造業での生産管理スペシャリスト","created_at":"2026-05-05 08:16:43.710663+00"},{"id":6,"category":"finance","salary":700,"title":"急成長ベンチャーでの経理マネージャー募集","created_at":"2026-05-05 08:17:25.982362+00"},{"id":7,"category":"hr","salary":500,"title":"大手IT企業での人事担当者募集","created_at":"2026-05-05 08:17:59.176987+00"},{"id":8,"category":"customer_support","salary":400,"title":"外資系企業でのカスタマーサポート担当募集","created_at":"2026-05-05 08:18:25.007609+00"},{"id":9,"category":"medical_care","salary":550,"title":"看護師募集！大学病院での勤務","created_at":"2026-05-05 08:18:51.373782+00"},{"id":10,"category":"clerical","salary":300,"title":"一般事務スタッフ募集！週3日からOK","created_at":"2026-05-05 08:19:22.184129+00"}])