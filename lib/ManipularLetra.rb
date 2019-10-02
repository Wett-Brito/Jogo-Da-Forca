require_relative 'Textos'
require_relative 'ComandoSistema'
class ManipularLetra
    
    attr_accessor :vetor
    attr_accessor :vetor2
    attr_accessor :r

    def initialize
        @vetor = []
        @vetor2 = []
        @r = ''
        @j = false
    end

    def quebrar_palavras(palavra)
        palavra.split('')
    end

    def verificar_quantas_letras(letra, palavra)
        palavra.count(letra)
    end

    def verificar_quantidade(palavra)
        palavra.size
    end

    def pegar_letra
        letra1 = gets.chomp
        ##Colocar aqui o código para verificar se é apenas uma letra mesmo
    end

    
    def zerar_revelar
        @vetor = []
        @vetor2 = []
    end


    def revelar(palavra, letra)
        list_texto = Textos.new
        j = 0

        @vetor = palavra.split('')
        @vetor.each do |i|
            if i == (letra)  
                @vetor2[j] = letra
                j += 1
            elsif (@vetor2[j] == i)
                @vetor2[j] = (i)
                j += 1
            else
                @vetor2[j] = "__"
                j += 1
            end            
        end
        @vetor.delete(letra)
        teste = @vetor2.join(".")
        list_texto.quebra_de_linha
        "Palavra que vc deve montar:  #{teste}"
    end

    def letras_ja_escritas(vetor)
        list_texto = Textos.new
        list_texto.quebra_de_linha
        "Essas são as letras que vc ja usou: #{vetor.uniq.join("--")}"
    end

    def forca(countar_erro)
        
         list_texto = Textos.new
        case countar_erro

        when 0
             list_texto.imagem0
        when 1
             list_texto.imagem1
        when 2
             list_texto.imagem2
        when 3
             list_texto.imagem3
        when 4
             list_texto.imagem4
        when 5
             list_texto.imagem5
        when 6
             list_texto.imagem6
        when 7
             list_texto.imagem7
        else
             list_texto.error
        end
    end

end