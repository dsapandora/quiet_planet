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
