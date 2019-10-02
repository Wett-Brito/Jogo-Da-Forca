require_relative 'lib/ProcurarPalavra'
require_relative 'lib/ManipularLetra'
require_relative 'lib/ComandoSistema'
require_relative 'lib/Textos'
require_relative 'lib/PrincipaisCampos'
require_relative 'lib/AberturaDoJogo'

#------------------------------------------------------------------------------

procurar_palavra = ProcurarPalavra.new
manipular_letra = ManipularLetra.new
comand_sistema = ComandoSistema.new
list_texto = Textos.new
principais_comandos = PrincipaisComandos.new
abertura_jogo = AberturaJogo.new

p = false

# Abertura do Jogo
abertura_jogo.tela_de_apresentação

#Loop para continuar rodando o jogo

while p == false
    vetor_letras_escritas = []
    vetor_acertos = []
    contar_erro = 0
    manipular_letra.zerar_revelar

    # escolher tipo das palavras

    comand_sistema.limpar_tela
    tipo_de_palavra_que_vai_usar = abertura_jogo.perguntar_qual_tipo_de_palavra.to_s

    # Escolha da palavra

    palavra_escolhida = procurar_palavra.escolher_palavra(tipo_de_palavra_que_vai_usar).strip  
    quant_palavra = manipular_letra.verificar_quantidade(palavra_escolhida)
    list_texto.quant_letras_palavra(quant_palavra)
    list_texto.quebra_de_linha
    manipular_letra.forca(contar_erro)

    # Recebe letra a primeira vez

    letra = principais_comandos.verificar_se_tem_apenas_1_letra(vetor_letras_escritas, contar_erro, quant_palavra).to_s
    quant_letra = manipular_letra.verificar_quantas_letras(letra, palavra_escolhida)

    j = false
    i = false

    # Loop até a pessoa acertar a palavra

    while i != true do

        # Verifica se a letra ja foi colocada

        u = principais_comandos.verificar_se_foi_colocada_essa_letra(contar_erro, quant_palavra, letra, vetor_letras_escritas)

        #Adiciona ao vetor de letras ja escritas todas as letras

        vetor_letras_escritas.push (letra)

        # Se não tiver a letra adiciona ao contador de erros

        contar_erro = principais_comandos.verificar_se_nao_tem_letra(quant_letra, quant_palavra, u, contar_erro, palavra_escolhida).to_i

        # Se tiver a letra adiciona ao vetor de acertos

        vetor_acertos = principais_comandos.verificar_quantas_vezes_tem_letra_na_palavra(quant_letra, quant_palavra, u, contar_erro, letra, vetor_acertos)

        # Verifica se a contagem de erros é igual a 7

        if contar_erro == 7 && i != true

            comand_sistema.limpar_tela
            list_texto.perdeu
            list_texto.palavra_era(palavra_escolhida)
            sleep 3
            i = true
        end

        # Verifica se o vetor de acertos esta ou não vazio

        k = vetor_acertos.to_a.empty?

        # Se o vetor de acertos estiver vazio

        if k != true

            k = false

            # Se o vetor de acertos não estiver vazio e a quantidade de itens nele for igual a quantidade de letras da palavra então a pessoa vence

            if vetor_acertos.length == quant_palavra 

                comand_sistema.limpar_tela
                list_texto.vitoria
                list_texto.palavra_era(palavra_escolhida)
                i = true    
                sleep 3
            # se o vetor de acertos não estiver vazio mas a quantidade de itens nele for diferente da quantidade de letras da palavra então apenas pegue outra letra
            
            elsif  vetor_acertos.length != quant_palavra && i != true

                puts manipular_letra.revelar(palavra_escolhida, letra)
                puts manipular_letra.letras_ja_escritas(vetor_letras_escritas)
                letra = principais_comandos.verificar_se_tem_apenas_1_letra(vetor_letras_escritas, contar_erro, quant_palavra).to_s    
                comand_sistema.limpar_tela
                j = false
                quant_letra = manipular_letra.verificar_quantas_letras(letra, palavra_escolhida)
            end 

        # Se o vetor de acertos estiver vazio, verifique se a letra que digitou esta correta, se estiver adicione ao vetor de acertos senão pegue outra letra
        
        elsif k == true && i != true

            puts manipular_letra.revelar(palavra_escolhida, letra)
            puts manipular_letra.letras_ja_escritas(vetor_letras_escritas)
            letra = principais_comandos.verificar_se_tem_apenas_1_letra(vetor_letras_escritas, contar_erro, quant_palavra).to_s    
            comand_sistema.limpar_tela
            j = false
            quant_letra = manipular_letra.verificar_quantas_letras(letra, palavra_escolhida)
        end

        # Verificar se ainda quer continuar jogando
        j = false
        while p == false && i == true && j != true

            if p == false && i == true

                comand_sistema.limpar_tela
                list_texto.se_quer_continuar_jogando
                continuar_jogando = gets.chomp.to_s.downcase

                if continuar_jogando == "n"

                    comand_sistema.limpar_tela
                    list_texto.obrigado_por_jogar
                    sleep 2
                    j = true
                    p = true
                elsif continuar_jogando == "s"

                    comand_sistema.limpar_tela
                    list_texto.aceitar_continuar_jogando
                    j = true
                    sleep 2
                else

                    puts "RESPOSTA INVALIDA"
                    sleep 0.5
                end
            end
        end
    end
end