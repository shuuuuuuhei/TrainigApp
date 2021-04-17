# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


TrainingMenu.where(title: 'スクワット').first.muscles.create!(
    [
        {
            name: '大臀筋',
            description: 'これは大臀筋です'
        },
        {
            name: '大腿四頭筋',
            description: 'これは大腿四頭筋です'
        },
        {
            name: 'ハムストリングス',
            description: 'これはハムストリングスです'
        },
        {
            name: 'ふくらはぎ',
            description: 'これはふくらはぎです'
        },
        {
            name: '脊柱起立筋',
            description: 'これは脊柱起立筋です'
        },
        {
            name: '内転筋',
            description: 'これは内転筋です'
        },
        {
            name: '中殿筋',
            description: 'これは中殿筋です'
        },
        {
            name: 'ふくらはぎ',
            description: 'これはふくらはぎです'
        },
        {
            name: '脊柱起立筋',
            description: 'これは脊柱起立筋です'
        },
        {
            name: '内転筋',
            description: 'これは内転筋です'
        }
    ]
)

