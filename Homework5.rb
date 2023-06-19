=begin
  How do private, public and protected modifiers work in Ruby?

  How can I do to set the initialize method, so it works receiving optional arguments?

  Create a Student class with the following components:

    • Instance attributes: full name, address, phone, age
    • A class attribute with the name of the university
    • The initialize method
    • Only reader accessors for all the attributes
    • A method that returns true if the student is underage
    • A method that returns true if the student’s age is more than 27

=end

=begin
  En Ruby, los modificadores de acceso private, public y protected se utilizan
  para controlar el acceso a los métodos y atributos de una clase.

  1. private: Los métodos y atributos declarados como private solo
    pueden ser accedidos dentro de la clase en la que se definen.
    No se pueden llamar directamente desde instancias de la clase. Por ejemplo:

    class MiClase
      private

      def metodo_privado
        puts "Este es un método privado"
      end
    end

    objeto = MiClase.new
    objeto.metodo_privado #=> Generará un error, ya que el método es privado

  2. public: Los métodos y atributos declarados como public son accesibles
    desde cualquier lugar. Son el tipo de acceso predeterminado para los métodos
    en Ruby, lo que significa que si no se especifica ningún modificador de acceso,
    se considera público. Por ejemplo:

    class MiClase
      def metodo_publico
        puts "Este es un método público"
      end
    end

    objeto = MiClase.new
    objeto.metodo_publico #=> Imprimirá "Este es un método público"

  3. protected: Los métodos y atributos declarados como protected pueden ser
  llamados por instancias de la misma clase o de una subclase. Sin embargo,
  no se pueden llamar desde fuera de la clase o subclase. Por ejemplo:

  class MiClase
    protected

    def metodo_protegido
      puts "Este es un método protegido"
    end
  end

  class MiSubclase < MiClase
    def llamar_metodo_protegido
      metodo_protegido #=> Se puede llamar porque está en la misma jerarquía de clases
    end
  end

  objeto = MiClase.new
  objeto.metodo_protegido #=> Generará un error, ya que el método es protegido

=end

=begin
  En Ruby, puedes definir el método 'initialize' de una clase para recibir argumentos
  opcionales utilizando parámetros con un valor por defecto.

  class MiClase
    def initialize(arg1 = nil, arg2 = nil)
      @atributo1 = arg1
      @atributo2 = arg2
    end
  end

  En el ejemplo anterior, el método 'initialize' recibe dos argumentos opcionales:
  'arg1' y 'arg2'. Estos argumentos se inicializan con un valor por defecto de 'nil',
  lo que significa que si no se proporcionan al crear una instancia de 'MiClase',
  los atributos '@atributo1' y '@atributo2' se establecerán en 'nil'.

  Puedes llamar al método 'initialize' pasando los argumentos opcionales al crear
  una instancia de la clase, como se muestra a continuación:

  objeto1 = MiClase.new("valor1", "valor2")
  puts objeto1.inspect #=> #<MiClase:0x00007ff800b65fd8 @atributo1="valor1", @atributo2="valor2">

  objeto2 = MiClase.new("valor3")
  puts objeto2.inspect #=> #<MiClase:0x00007ff800b65e40 @atributo1="valor3", @atributo2=nil>

  objeto3 = MiClase.new
  puts objeto3.inspect #=> #<MiClase:0x00007ff800b65cc0 @atributo1=nil, @atributo2=nil>

=end

#Class Student

class Student
  #Class atributes
  @@university = "Instituto Tecnológico Metropolitano"

  #Only reader accessors
  attr_reader :full_name, :address, :phone, :age

  #Initialize method and instance atributes
  def initialize(full_name, address, phone, age)
    @full_name = full_name
    @address = address
    @phone = phone
    @age = age
  end

  #Class method
  def self.university
    @@university
  end

  def underage?
    @age < 18
  end

  def over_27?
    @age > 27
  end
end

student = Student.new("Sara Gallego Sandoval", "Calle 7 sur", "3012345941", 20)

puts student.full_name #=> "Sara Gallego Sandoval"
puts student.address #=> "Calle 7 sur"
puts student.phone #=> "3012345941"
puts student.age #=> 20

puts Student.university #=> "Instituto Tecnológico Metropolitano"

puts student.underage? #=> false
puts student.over_27? #=> false
