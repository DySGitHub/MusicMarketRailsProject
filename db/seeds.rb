# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Accessory.create(brand: 'Fender', accessorytype: 'Guitar Pick', colour: 'Brown', price: '20')
Accessory.create(brand: 'Generic', accessorytype: 'Piano Cover', colour: 'Grey', price: '50')
Accessory.create(brand: 'Warwick', accessorytype: 'Guitar Bag', colour: 'Black', price: '40')
Accessory.create(brand: 'Roland', accessorytype: 'Piano Seat', colour: 'Black', price: '150')
Accessory.create(brand: 'Yamaha', accessorytype: 'Guitar Box', colour: 'Grey', price: '100')
Accessory.create(brand: 'Jim Dunlop', accessorytype: 'Guitar Pick', colour: 'Brown', price: '15')
Accessory.find(1)
Accessory.find(2)
Accessory.find(3)
Accessory.find(4)
Accessory.find(5)
Accessory.find(6)


Guitar.create(brand: 'Yamaha', guitartype: 'Electric', colour: 'Black/White', price: 350, finish: 'Metal')
Guitar.create(brand: 'Fender', guitartype: 'Acoustic', colour: 'Brown', price: 225, finish: 'Wooden')
Guitar.create(brand: 'Maestro', guitartype: 'Electric', colour: 'Brown', price: 100, finish: 'Faux Wood')
Guitar.create(brand: 'Gibson', guitartype: 'Acoustic', colour: 'Brown', price: 400, finish: 'Wooden')
Guitar.create(brand: 'Avalon', guitartype: 'Electric', colour: 'Brown/White', price: 280, finish: 'Wooden/Metal')
Guitar.create(brand: 'G&L', guitartype: 'Acoustic', colour: 'Brown/Black', price: 280, finish: 'Wooden')
Guitar.find(1)
Guitar.find(2)
Guitar.find(3)
Guitar.find(4)
Guitar.find(5)
Guitar.find(6)


Piano.create(brand: 'Royale', pianotype: 'Grand/Keyboard Combo', colour: 'Black', price: 2500, keys: 102)
Piano.create(brand: 'Chavanne', pianotype: 'Grand', colour: 'Brown', price: 900, keys: 88)
Piano.create(brand: 'Yamaha', pianotype: 'Keyboard', colour: 'Grey', price: 400, keys: 66)
Piano.create(brand: 'Roland', pianotype: 'Grand', colour: 'Black', price: 1200, keys: 102)
Piano.create(brand: 'Yamaha', pianotype: 'Keyboard', colour: 'Brown', price: 850, keys: 88)
Piano.create(brand: 'Baldwin', pianotype: 'Grand', colour: 'Black', price: 3000, keys: 144)
Piano.find(1)
Piano.find(2)
Piano.find(3)
Piano.find(4)
Piano.find(5)
Piano.find(6)


