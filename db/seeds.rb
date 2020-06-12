# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' ) { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

def clean_data(str)
  str.split("'")[1]
end

pa = Country.create(name: 'Panama', abbreviature: 'PA')
cr =Country.create(name: 'Costa Rica', abbreviature: 'CR')
ni = Country.create(name: 'Nicaragua', abbreviature: 'NI')
ho = Country.create(name: 'Honduras', abbreviature: 'HO')
sv = Country.create(name: 'El Salvador', abbreviature: 'SV')
be =Country.create(name: 'Belize', abbreviature: 'BE')
gu = Country.create(name: 'Guatemala', abbreviature: 'GU')
city_pa = City.create(name: 'Ciudad de Panama', country_id: pa.id)
city_cr = City.create(name: 'San Jose', country_id: cr.id)
city_ni = City.create(name: 'Managua', country_id: ni.id)
city_ho = City.create(name: 'Tegucigalpa', country_id: ho.id)
city_sv = City.create(name: 'San Salvador', country_id: sv.id)
city_be = City.create(name: 'Belmopan', country_id: be.id)
city_gu = City.create(name: 'Ciudad de Guatemala', country_id: gu.id)

#LoadData
AmfStrat=0
AmfTropClear=1
AmfTropCloudy=2
VcdApBelowCloud=3
VcdApStrat=4
VcdApTrop=5
TerrainReflectivity=6
Latitude=7
Longitude=8
PointRadius=9
TimeUTC=10



##
[[city_pa,'PANAMA.csv'],[city_cr,'COSTARICA.csv'], [city_ni, 'NICARAGUA.csv'], [city_ho, 'HONDURAS.csv'], [city_sv, 'ELSALVADOR.csv'], [city_be, 'BELIZE.csv'], [city_gu, 'GUATEMALA.csv'] ].each do |city, filename|
list = CSV.read(Rails.root.join('lib', 'assets', 'contaminacion', filename))
list.each do |row|
  next unless clean_data(row[TimeUTC]).present?
  date = DateTime.parse(clean_data(row[TimeUTC]))
  latitude = clean_data(row[Latitude])
  longitude = clean_data(row[Longitude])
  PolutionInfo.create(city_id: city.id, date: date, latidude: latitude, logitude: longitude, vcdapstrat: clean_data(row[VcdApStrat]), vcdaptrop: clean_data(row[VcdApTrop]), amfstrat: clean_data(row[AmfStrat]),vcdapbelowcloud:clean_data(row[VcdApBelowCloud]))
  RaiditionInfo.create(city_id: city.id, date: date, latidude: latitude, logitude: longitude, terrain_reflectivity: clean_data(row[TerrainReflectivity]), point_radius: clean_data(row[PointRadius]))
  CloudInfo.create(city_id: city.id, date: date, latidude: latitude, logitude: longitude, amfstrat:clean_data(row[AmfStrat]), amftropclear:clean_data(row[AmfTropClear]), amftropcloudy: clean_data(row[AmfTropCloudy]))
end
end


# Create user post for demo
u1 = User.new(email: "user1@example.net", password: "test test")
u1.fullname = 'Jerome Gaveau'
u1.photo = 'https://live.staticflickr.com/1128/3169334745_68b573f8ee_m.jpg'
u1.city_id = city_ni.id
u1.save


u2 = User.new(email: "user2@example.net", password: "test test")
u2.fullname = 'Jonathan Lecluze'
u2.photo = 'https://api.creativecommons.engineering/v1/thumbs/1298c4a2-5e08-4394-8277-8368dfb09f32.jpg'
u2.city_id = city_pa.id
u2.save


u3 = User.new(email: "user3@example.net", password: "test test")
u3.fullname = 'Linda Smith'
u3.photo = 'https://api.creativecommons.engineering/v1/thumbs/98ec069c-84a7-4f66-9398-b870ef6cd403.jpg'
u3.city_id = city_cr.id
u3.save


u4 = User.new(email: "user4@example.net", password: "test test")
u4.photo = 'https://api.creativecommons.engineering/v1/thumbs/691f9925-f6f3-45d4-b6b9-bf6c079f1f47.jpg'
u4.fullname = 'Gaby O´Hara'
u4.city_id = city_be.id
u4.save


p5 = Komune.new(user_id: u4.id)
p5.value='“Like music and art, love of nature is a common language that can transcend political or social boundaries.” —Jimmy Carter'
p5.photo=''
p5.save

p4 = Komune.new(user_id: u1.id)
p4.value='They say an elephant never forgets.'
p4.photo='https://live.staticflickr.com/3628/3525668687_69981fe57a_b.jpg'
p4.save

p3 = Komune.new(user_id: u3.id)
p3.value='“One of the first conditions of happiness is that the link between man and nature shall not be broken.” —Leo Tolstoy'
p3.photo=''
p3.save

p2 = Komune.new(user_id: u2.id)
p2.value='We have managed to reduce, compost or reuse 50% of our waste streams.'
p2.photo='https://live.staticflickr.com/57/163680271_c5cd79783f_b.jpg'
p2.save

p1 = Komune.new(user_id: u1.id)
p1.value='“Progress is impossible without change, and those who cannot change their minds cannot change anything.” -George Bernard Shaw'
p1.photo=''
p1.save


CheckPoint.create(name: "Café Unido Marbella", latitude: 8.9811995, longitude: -79.519572)
CheckPoint.create(name: "Globabl Bank", latitude: 8.9843051, longitude: -79.518749)
CheckPoint.create(name: "Alquila Costura", latitude: 8.9861703, longitude: -79.5227837)
CheckPoint.create(name: "Via Brazil", latitude: 8.9872975, longitude: -79.5156296)
CheckPoint.create(name: "MultiPlaza", latitude: 8.9876156, longitude: -79.5126683)
