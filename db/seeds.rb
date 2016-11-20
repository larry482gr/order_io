# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Language.create([{id: 1, locale: 'en', language: 'english'}, {id: 2, locale: 'gr', language: 'greek'}])

I18n.locale = :en
Size.create([{label: 'Default'}])

I18n.locale = :gr
Size.create([{label: 'Κανονικό'}])