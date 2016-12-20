# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Language.create([{id: 1, locale: 'en', language: 'english'}, {id: 2, locale: 'el', language: 'greek'}])

Size.create(label: 'Default', ordering: 1)
Translation.create(table_name: Size.table_name, locale: Language.find(2).locale, reference_id: Size.find(1).id, fields: {label: 'Κανονικό'})
