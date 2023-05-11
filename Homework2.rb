=begin
  What cases do you think arrays are more suitable than hashes for?

    Cuando se necesita almacenar una secuencia ordenada de elementos:
    Los arrays son ideales cuando se necesita almacenar una colección de
    elementos que tienen un orden definido.

    Cuando se necesitan datos únicos sin llaves específicas: Si sólo se
    necesitan datos sin un identificador específico, como una lista de
    números o una lista de elementos en una cola, un array es una buena
    opción. Esto se debe a que los arrays pueden contener elementos duplicados
    y no necesitan llaves para acceder a sus elementos.

    Cuando la velocidad es importante: Los arrays son ligeramente más rápidos
    que los hashes debido a que no necesitan calcular hash para acceder a sus
    elementos.

  What cases do you think hashes are more suitable than arrays for?

    Cuando se necesitan identificadores específicos para los elementos:
    Los hashes son ideales cuando se necesita almacenar un conjunto de elementos
    que tienen un identificador específico o una clave. Por ejemplo, cuando se
    desea almacenar información de contactos de clientes y se necesita acceder
    a ellos por su identificador.

    Cuando se necesita una estructura de datos más compleja: Los hashes pueden
    almacenar datos complejos y estructurados, como objetos y matrices. Esto
    permite una mayor flexibilidad en la estructura de los datos, lo que resulta
    en una mayor eficiencia en el procesamiento de datos.

    Cuando se necesita un acceso rápido a los datos por su identificador: Los
    hashes son más eficientes en el acceso a los elementos por su identificador,
    ya que utilizan la función hash para acceder directamente al elemento.
    Esto hace que los hashes sean más rápidos en el acceso a los elementos
    que los arrays.

  Can we have hashes as arrays’ elements? Can we have arrays as hashes’ elements?
  Can an array or a hash be the key of any hash element?

    Sí, es posible tener hashes como elementos de arrays y arrays como elementos
    de hashes. De hecho, los arrays y los hashes son tipos de objetos y, como tales,
    pueden ser elementos de otros objetos. Por ejemplo, un array puede contener
    varios hashes y un hash puede contener varios arrays.

    Sin embargo, no es posible utilizar un array o un hash como clave de un elemento
    de hash en Ruby. La razón es que las claves de un hash deben ser objetos inmutables,
    es decir, objetos que no puedan ser modificados después de ser creados. Los
    arrays y los hashes son objetos mutables, por lo que no pueden ser utilizados
    como claves en un hash.
=end

=begin
  Write an array that stores, in order, the most popular domains in Colombia, according to
  https://radar.cloudflare.com/co
=end

puts "Los 10 dominios más populares en Colombia"
popular_domains = Array.new(10)
popular_domains = ["google.com", "googleapis.com", "gstatic.com", "facebook.com", "microsoft.com", "whatsapp.net", "googlevideo.com", "doubleclick.net", "gvt2.com", "tiktokcdn.com"]

popular_domains.each do |domain|
  puts domain
end

=begin
  Write a hash that stores Colombia’s departments and their corresponding capital cities.
=end

puts "\nDepartamentos y capitales de Colombia"
departments_capital = Hash.new
departments_capital = {
  "Amazonas" => "Leticia",
  "Antioquia" => "Medellín",
  "Arauca" => "Arauca",
  "Atlántico" => "Barranquilla",
  "Bolívar" => "Cartagena",
  "Boyacá" => "Tunja",
  "Caldas" => "Manizales",
  "Caquetá" => "Florencia",
  "Casanare" => "Yopal",
  "Cauca" => "Popayán",
  "Cesar" => "Valledupar",
  "Chocó" => "Quibdó",
  "Córdoba" => "Montería",
  "Cundinamarca" => "Bogotá",
  "Guainía" => "Inírida",
  "Guaviare" => "San José del Guaviare",
  "Huila" => "Neiva",
  "La Guajira" => "Riohacha",
  "Magdalena" => "Santa Marta",
  "Meta" => "Villavicencio",
  "Nariño" => "Pasto",
  "Norte de Santander" => "Cúcuta",
  "Putumayo" => "Mocoa",
  "Quindío" => "Armenia",
  "Risaralda" => "Pereira",
  "San Andrés y Providencia" => "San Andrés",
  "Santander" => "Bucaramanga",
  "Sucre" => "Sincelejo",
  "Tolima" => "Ibagué",
  "Valle del Cauca" => "Cali",
  "Vaupés" => "Mitú",
  "Vichada" => "Puerto Carreño"
}

#Accedemos a algunas de las posiciones
puts "La capital de Boyacá es #{departments_capital["Boyacá"]}"
puts "La capital de Valle del Cauca es #{departments_capital["Valle del Cauca"]}"


=begin
  Write a hash that stores Colombia’s autonomous systems’ codes and their corresponding names,
  according to https://radar.cloudflare.com/co
=end

puts "\nSistemas autónomos de Colombia"
autonomous_systems = Hash.new
autonomous_systems = {
  "AS3816" => "COLOMBIA TELECOMUNICACIONES S.A. ESP",
  "AS13489" => "EPM Telecomunicaciones S.A. E.S.P.",
  "AS10620" => "Telmex Colombia S.A.",
  "AS19429" => "ETB - Colombia",
  "AS27831" => "Colombia Movil"
}

#Mostrar todos los elementos
autonomous_systems.each do |code, name|
  puts "#{code}: #{name}"
end

#Mostrar el nombre correspondiente al código AS10620
puts "El código AS10620 corresponde a #{autonomous_systems["AS10620"]}"
