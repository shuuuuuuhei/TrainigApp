# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TrainingMenu.create!(
#     [
#         {
#             title: 'レッグレイズ',
#             description: 'これはレッグレイズです'
#         },
#         {
#             title: 'ブリッジ',
#             description: 'これはブリッジです'
#         },
#         {
#             title: 'ドローイング',
#             description: 'これはドローイングです'
#         },
#         {
#             title: '逆立ち',
#             description: 'これは逆立ちです'
#         },
#     ]
# )
#==============================================================================
muscles = ['三角筋', '上腕三頭筋', '僧帽筋', '広背筋']
muscles.each do |muscle|
    TrainingMenu.where(title: '逆立ち').first.submit_muscle(muscle)
end