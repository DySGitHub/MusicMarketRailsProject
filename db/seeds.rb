User.create(name:'Dylan Sage', email:'Dylan@Sage.com', password: "DylanPassword", password_confirmation: "DylanPassword")
User.create(name:'Tom Smith', email:'TomSmith@gmail.com', password: "TomPassword", password_confirmation: "TomPassword")
User.create(name:'Alex Jones', email:'AlexJones@hotmail.com', password: "AlexPassword", password_confirmation: "AlexPassword")


user = User.find(1)
user.feedbacks.create(rating: 8, content: 'Excellent to Deal With.')


user = User.find(1)
user.purchases.create(delivery:'Express', address: '123 Fake Street', country: 'Ireland', guitarid: 2)
user.purchases.create(delivery:'Regular', address: '13 Ave Street', country: 'UK', guitarid: 5)
user = User.find(2)
user.purchases.create(delivery:'Express', address: '52 Ariole Road', country: 'France', guitarid: 3)
user = User.find(3)
user.purchases.create(delivery:'Regular', address: '3 City Ave', country: 'UK', guitarid: 1)
user.purchases.create(delivery:'Express', address: '5 Town Road', country: 'Ireland', guitarid: 4)
user.purchases.create(delivery:'Regular', address: '212 Anderson Ave', country: 'Spain', guitarid: 6)


Accessory.create(brand: 'Fender', accessorytype: 'Guitar Pick', colour: 'Brown', price: 20)
Accessory.create(brand: 'Generic', accessorytype: 'Piano Cover', colour: 'Grey', price: 50)
Accessory.create(brand: 'Warwick', accessorytype: 'Guitar Bag', colour: 'Black', price: 40)
Accessory.create(brand: 'Roland', accessorytype: 'Piano Seat', colour: 'Black', price: 150)
Accessory.create(brand: 'Yamaha', accessorytype: 'Guitar Box', colour: 'Grey', price: 100)
Accessory.create(brand: 'Jim Dunlop', accessorytype: 'Guitar Pick', colour: 'Brown', price: 15)
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


