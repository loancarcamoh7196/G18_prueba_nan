# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

10.times do
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: '123456'
    )
end

Task.destroy_all
 activities = [ 
    {
        name: 'Comer una empanada',
        image: 'https://www.rockandpop.cl/wp-content/uploads/2018/09/empanadas1-e16b9748eacff4993015119479206259-640-0.jpg'   
    },
    {
        name:'Bailar una patita',
        description: '',
        image: 'https://www.cooperativa.cl/noticias/site/artic/20180910/imag/foto_0000000120180910093518.jpg'
    },
    {
        name: 'Tomarse un terremoto',
        image: 'http://www.holamujer.cl/wp-content/uploads/2018/08/terremoto.jpg'
    },
    {
        name: 'Jugar una pichanga',
        image: 'https://www.elmostrador.cl/media/2014/06/pichanga1_816x428.jpg'
    },{
        name: 'Ir a fonda', 
        image: 'http://www.estrategia.cl/images/showid/2003317'
    },{
        name: 'Encumbrar volantín',
        image: 'https://www.24horas.cl/nacional/article295027.ece/ALTERNATES/w700/Peligros%20de%20los%20volantines%20y%20el%20hilo%20curado'
    },{
        name: 'Jugar a las bolitas',
        image: 'http://www.ellitoral.com/um/fotos/217920_bolitas_.jpg'
    },{
        name: 'Jugar con Trompos',
        image: 'http://santatere.mx/wp-content/uploads/2014/01/image-2.png'
    },{
        name: 'Hacer un asadito!',
        image: 'http://www.fmdos.cl/wp-content/uploads/2017/06/Asados.jpg'
    }
 ]
 activities.each do |a|
    Task.create(
        name: a[:name],
        image: a[:image]
    )
end



