# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  
  def initialize (num,denom)
      # atributos      
      @num = num;
      @denom = denom; 
    end
 
    
  # devuelve una cadena con la representación del racionales
    def to_s 
	 puts "#{@num}/#{@denom}"
    end
#   * `suma`     # devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
    def suma(a,b)
      "#{@num}/#{@denom} + #{a}/#{b} ="
      aux = (@denom/gcd(@denom,b)) * b # Propiedad (a*b/mcd(a,b))
      aux2 = ((aux/@denom) * @num) + ((aux/b) * a)  
      if aux2 % aux == 0 
	 aux3 = aux2/aux
      else
         "#{aux2}/#{aux}"
      end  
    end
    
  #   * `resta`    # devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro 
    def resta (a,b)
     "#{@num}/#{@denom} + #{a}/#{b} ="
      aux = (@denom/gcd(@denom,b)) * b # Propiedad (a*b/mcd(a,b))
      aux2 = ((aux/@denom) * @num) - ((aux/b) * a)  
      if aux2 % aux == 0 
	 aux3 = aux2/aux
      else
         "#{aux2}/#{aux}"
      end  
    end
    
    #   * `producto` # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro

     def producto(a,b) # Producto de fracciones
	"#{@num}/#{@denom} * #{a}/#{b} ="
	aux = @denom * b
	aux2 = @num * a
	
	if aux2 % aux == 0 
	  aux2/aux
	else
	  "#{aux2}/#{aux}"
	end
      end
  
    #   * `division` # devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
    def division(a,b)
        "#{@num}/#{@denom} / #{a}/#{b} ="
       aux = @denom * a
       aux2 = @num * b
       if aux2 % aux == 0 #
          aux2/aux
       else
          "#{aux2}/#{aux}"
       end
    end




#   
  
end

puts "----Practica 5-------"
F = Fraccion.new(3,5)
F.to_s
print "Suma: "
puts F.suma(5,3)
print "Resta: "
puts F.resta(5,3)
print "Producto: "
puts F.producto(5,3)
print "Divison: "
puts F.division(5,3)
