# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

  class Test_Fraccion < Test::Unit::TestCase

        def test_to_s
                f = Fraccion.new(3,5)
                esperado = f.to_s
                assert_equal "3/5", esperado
        end
        
        def test_suma
                f = Fraccion.new(3,5)
                esperado = f.suma(5,3)
                assert_equal "34/15", esperado
        end

        def test_resta
                f = Fraccion.new(3,5)
                esperado = f.resta(5,3)
                assert_equal "-16/15", esperado
        end

        def test_producto
                f = Fraccion.new(3,5)
                esperado = f.producto(1,2)
                assert_equal "3/10", esperado
        end
        
        def test_division
                f = Fraccion.new(3,5)
                esperado = f.division(5,3)
                assert_equal "9/25", esperado
        end
end
