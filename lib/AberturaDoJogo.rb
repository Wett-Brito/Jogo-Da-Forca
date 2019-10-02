class AberturaJogo

    attr_reader :tipo_palavra

    def initialize
        @tipo_palavra = 0
        @i = false
    end

    def tela_de_apresentação

        comand_sistema = ComandoSistema.new
        list_texto = Textos.new

        comand_sistema.limpar_tela
        
        list_texto.jogo_da_forca
        sleep 2

        comand_sistema.limpar_tela
    end

    def perguntar_qual_tipo_de_palavra
        
        list_texto = Textos.new
        comand_sistema = ComandoSistema.new

        @i = false

         while @i == false
            list_texto.tipo_fruta
            list_texto.tipo_paises
            list_texto.tipo_nomes
            list_texto.tipo_digitar_escolha
            @tipo_palavra = gets.chomp.to_i
            comand_sistema.limpar_tela
            case @tipo_palavra.to_i
 
            when 1
               @i = true
               return tipo_palavra_texto = "fruta.txt"

            when 2
               @i = true
               return tipo_palavra_texto = "pais.txt"

            when 3
               @i = true
               return tipo_palavra_texto = "nome.txt"

            else
                list_texto.erro_tipo
                sleep 2
                comand_sistema.limpar_tela
            end
         end

    end

    def definir_qual_tema(tipo_palavra)

        list_texto = Textos.new
        comand_sistema = ComandoSistema.new

        until @i == true do
            comand_sistema.limpar_tela  

            case tipo_palavra.to_i

            when 1
                return tipo_palavra_texto = "fruta.txt"
                @i = true
            when 2
                return tipo_palavra_texto = "pais.txt"
                @i = true
            when 3
                return tipo_palavra_texto = "nome.txt"
                @i = true
            else
                list_texto.erro_tipo
            end
        end
    end

end