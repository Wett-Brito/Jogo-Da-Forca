require_relative 'Textos'
require_relative 'ManipularLetra'
require_relative 'ComandoSistema'

class PrincipaisComandos

    attr_reader :j
    attr_accessor :letra
    attr_accessor :vetor_de_palavras_certas

    def initialize
        @j = false
        @letra = ''
        @vetor_de_palavras_certas = []
    end

    def verificar_se_tem_apenas_1_letra (vetor_letras_escritas, contar_erro, quant_palavra)
        list_texto = Textos.new
        manipular_letra = ManipularLetra.new
        comand_sistema = ComandoSistema.new
        @j = false

        list_texto.coloque_letra
        @letra = manipular_letra.pegar_letra.downcase
        comand_sistema.limpar_tela
        puts @letra.size

        while @j == false do
            if @letra.size > 1
                list_texto.quant_letras_palavra(quant_palavra)
            
                list_texto.apenas_1_caracter
         
                manipular_letra.forca(contar_erro)
                puts manipular_letra.letras_ja_escritas(vetor_letras_escritas)
         
                list_texto.coloque_letra_denovo
                @letra = manipular_letra.pegar_letra
                comand_sistema.limpar_tela
            else    
                @j = true
                comand_sistema.limpar_tela
                return letra = @letra
            end
        end
    end
    
    def verificar_se_foi_colocada_essa_letra(contar_erro, quant_palavra, letra, vetor_letras_escritas)
      
        manipular_letra = ManipularLetra.new
        list_texto = Textos.new
        t = vetor_letras_escritas.include? letra

        if t == true # Verifica se ja foi colocada
     
            list_texto.quant_letras_palavra(quant_palavra)
     
            list_texto.ja_colocou_letra
            manipular_letra.forca(contar_erro)
            return u = true
            
        else
            return u = false
        end
    end

    def verificar_quantas_vezes_tem_letra_na_palavra(quant_letra, quant_palavra, u, contar_erro, letra, vetor_de_palavras_certas)
        manipular_letra = ManipularLetra.new
        list_texto = Textos.new
        if quant_letra > 0 && u == false # Avisa quantas vezes essa letra aparece na palavra
     
            list_texto.quant_letras_palavra(quant_palavra)
     
             list_texto.acertou
            manipular_letra.forca(contar_erro)
            
             list_texto.quebra_de_linha
            puts "Essa letra aparece na palavra: #{quant_letra}"
            quant_letra.times do # adiciona a um vetor quantas letras foram acertadas
                vetor_de_palavras_certas.push(letra) 
            end
            return vetor_de_palavras_certas.to_a
        else
            return vetor_de_palavras_certas.to_a
        
        end
    end
    
    def verificar_se_nao_tem_letra(quant_letra, quant_palavra, u, contar_erro = 0, palavra_escolhida) 
        manipular_letra = ManipularLetra.new
        list_texto = Textos.new

        if quant_letra == 0 && u == false # Avisa que não possui essa letra na palavra
     
             list_texto.quant_letras_palavra(quant_palavra)
             list_texto.nao_tem_letra
            manipular_letra.forca(contar_erro += 1)
            return contar_erro

        else
            return contar_erro
        end
    end

end