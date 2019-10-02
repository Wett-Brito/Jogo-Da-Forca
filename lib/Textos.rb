        require_relative 'Textos'
        require_relative 'ComandoSistema'

        class Textos

            def coloque_letra
                puts "---------------------------------------------------------"
                puts "Coloque uma letra!!" 
            end
            
            def quebra_de_linha
                puts "---------------------------------------------------------"
            end
            
            def ja_colocou_letra
                puts "---------------------------------------------------------" 
                puts "Vc ta tentando repetir letra para de ser burro!"
            end

            def nao_tem_letra
                puts "---------------------------------------------------------"
                puts "     ___ ____  ____   ___  __ __ "
                puts "    /  _]    \\|    \\ /   \\|  |  |"
                puts "   /  [_|  D  )  D  )     |  |  |"
                puts "  |    _]    /|    /|  O  |  |  |"
                puts "  |   [_|    \\|    \\|     |  :  |"
                puts "  |     |  .  \\  .  \\     |     |"
                puts "  |_____|__|\\_|__|\\_|\\___/ \\__,_|"
                puts "                                 "
            end


            def abertura_do_jogo

                puts "........." 
                puts "   :~, *   * ~,"
                puts "   : ~, *   * ~.          Wellington Brito"
                puts "   :  ~........~"
                puts "   :  ~........~"
                puts "   : *:         :      ~'~,"
                puts "   :  :         :    ~' *  ~,"
                puts "   ~* :    *    : ,~' *    * ~,"
                puts "    ~,:         :.~,*    *  ,~ :"
                puts "     ~:.........::  ~, *  ,~   :"
                puts "                 : *  ~,,~  *  :"
                puts "                 :* * * :  *   :"
                puts "                  ~, *  : *  ,~"
                puts "                    ~,  :  ,~"
                puts "                      ~,:,~"
                puts "........."
            end

            def tipo_fruta
                puts "1) Para palavras com nomes de FRUTAS"
            end

            def tipo_paises
                puts "2) Para palavras com nomes de PAISES"
            end

            def tipo_nomes
                puts "3) Para palavras com nomes de PESSOAS"
            end

            def tipo_digitar_escolha
                puts "---------------------------------------------------------"
                puts "Escolha o tipo de palavra: "
            end

            def erro_tipo
                puts "Favor colocar um tipo disponivel"
            end


            def acertou
                puts "---------------------------------------------------------"
                puts "    ____    __   ___ ____  ______  ___  __ __ "
                puts "   /    |  /  ] /  _]    \\|      |/   \\|  |  |"
                puts "  |  o  | /  / /  [_|  D  )      |     |  |  |"
                puts "  |     |/  / |    _]    /|_|  |_|  O  |  |  |"
                puts "  |  _  /   \\_|   [_|    \\  |  | |     |  :  |"
                puts "  |  |  \\     |     |  .  \\ |  | |     |     |"
                puts "  |__|__|\\____|_____|__|\\_| |__|  \\___/ \\__,_|"
                puts "                                              "
            end


            def jogo_da_forca
            puts "     |/|"
            puts "     |/|"
            puts "     |/|"
            puts "     |/|"
            puts "     |/|"
            puts "     |/|"
            puts "     |/| /¯)"
            puts "     |/|/\\/"
            puts "     |/|\\/"
            puts "     (¯¯¯)"
            puts "     (¯¯¯)"
            puts "     (¯¯¯)"
            puts "     (¯¯¯)             ___                         _          __                    "
            puts "     (¯¯¯)            |_  |                       | |        / _|                   "
            puts "     (¯¯¯)              | | ___   __ _  ___     __| | __ _  | |_ ___  _ __ ___ __ _ "
            puts "     /¯¯/\\              | |/ _ \\ / _` |/ _ \\   / _` |/ _` | |  _/ _ \\| '__/ __/ _` |"
            puts "    / ,^./\\         /\\__/ / (_) | (_| | (_) | | (_| | (_| | | || (_) | | | (_| (_| |"
            puts "   / /   \\/\\        \\____/ \\___/ \\__, |\\___/   \\__,_|\\__,_| |_| \\___/|_|  \\___\\__,_|"
            puts "  / /     \\/\\                     __/ |                                             "
            puts " ( (       )/)                   |___/                                              "
            puts " | |       |/|    "
            puts " | |       |/|"
            puts " | |       |/| "   
            puts " ( (       )/)"
            puts "  \\ \\     / /"
            puts "   \\ `---' /"
            puts "    `-----'  "   
        
        end



            def apenas_1_caracter
                puts "---------------------------------------------------------"
                puts "Sua letra deve ter apenas 1 caracter!!!"
            end

            def palavra_era(palavra)
                puts "---------------------------------------------------------"
                puts " A palavra era: #{palavra.upcase}."
            end

            def coloque_letra_denovo
                puts "---------------------------------------------------------"
                puts "Coloca sua letra NOVAMENTE: "
            end

            def quant_letras_palavra(quant_palavra)
                puts "---------------------------------------------------------"
                puts "A quantidade de letras nessa palavra é: #{quant_palavra}"
            end

            def letras_que_ja_acertou(vetor_de_palavras_certas)
                puts "---------------------------------------------------------"
                puts "letras que vc ja acertou: #{vetor_de_palavras_certas}"
            end

            def se_quer_continuar_jogando
                puts "Gostaria de continuar jogando? S/N"
            end

            def aceitar_continuar_jogando 
                puts "Então bora continuar jogando!!!!"
            end

            def vitoria
                puts "//   ____   ____ ____   ____ ____    ___ ____   _____  "
                puts "//  |    \\ /    |    \\ /    |    \\  /  _]    \\ / ___/"
                puts "//  |  o  )  o  |  D  )  o  |  o  )/  [_|  _  (   \\_ "
                puts "//  |   _/|     |    /|     |     |    _]  |  |\\__  |"
                puts "//  |  |  |  _  |    \\|  _  |  O  |   [_|  |  |/  \\ |"
                puts "//  |  |  |  |  |  .  \\  |  |     |     |  |  |\\    |"
                puts "//  |__|  |__|__|__|\\_|__|__|_____|_____|__|__| \\___|"
                puts "//                                                   "
            end

            def perdeu
                puts "---------------------------------------------------------"
                puts "//   __ __    __      ____   ___ ____  ___     ___ __ __     "
                puts "//  |  |  |  /  ]    |    \\ /  _]    \\|   \\  /   _]  |  |  "  
                puts "//  |  |  | /  /     |  o  )  [_|  D  )    \\/   [_|  |  |    "
                puts "//  |  |  |/  /      |   _/    _]    /|  D  |    _]  |  |    "
                puts "//  |  :  /   \\_     |  | |   [_|    \\|     |   [_|  :  |   " 
                puts "//   \\   /\\     |    |  | |     |  .  \\     |     |     |    "
                puts "//    \\_/  \\____|    |__| |_____|__|\\_|_____|_____|\\__,_| "   
                puts "//    "
            end


            def obrigado_por_jogar
                puts "//    ___  ____  ____  ____  ____  ____ ___    ___       ____   ___  ____        ____  ___   ____  ____ ____  "
                puts "//   /   \\|    \\|    \\|    |/    |/    |   \\  /   \\     |    \\ /   \\|    \\      |    |/   \\ /    |/    |    \\ "
                puts "//  |     |  o  )  D  )|  ||   __|  o  |    \\|     |    |  o  )     |  D  )     |__  |     |   __|  o  |  D  )"
                puts "//  |  O  |     |    / |  ||  |  |     |  D  |  O  |    |   _/|  O  |    /      __|  |  O  |  |  |     |    / "
                puts "//  |     |  O  |    \\ |  ||  |_ |  _  |     |     |    |  |  |     |    \\     /  |  |     |  |_ |  _  |    \\ "
                puts "//  |     |     |  .  \\|  ||     |  |  |     |     |    |  |  |     |  .  \\    \\  `  |     |     |  |  |  .  \\"
                puts "//   \\___/|_____|__|\\_|____|___,_|__|__|_____|\\___/     |__|   \\___/|__|\\_|     \\____j\\___/|___,_|__|__|__|\\_|"
                puts "//                                                                                                            "
                puts "//                            Ass: WELLINGTON BRITO"


            end

            def imagem0
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |"
                puts "    |"
                puts "    |"
                puts "    |"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end
            def imagem1
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |     O"
                puts "    |"
                puts "    |"
                puts "    |"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end
            
            def imagem2
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |     O"
                puts "    |    [ ]"
                puts "    |"
                puts "    |"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end

            def imagem3
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |     O"
                puts "    |    [ ]"
                puts "    |     |"
                puts "    |"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end

            def imagem4
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |     O"
                puts "    |    [ ]"
                puts "    |     |"
                puts "    |    /"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end

            def imagem5
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |     O"
                puts "    |    [ ]"
                puts "    |     |"
                puts "    |    / \\"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end

            def imagem6
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |     O"
                puts "    |   /[ ]"
                puts "    |     |"
                puts "    |    / \\"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end

            def imagem7
                puts ""  
                puts "    -------"
                puts "    |     |"
                puts "    |     |"
                puts "    |     O"
                puts "    |   /[ ]\\"
                puts "    |     |"
                puts "    |    / \\"
                puts "    |"
                puts "____|_________" 
                puts "	"
            end

            def error
                puts "---------------------------------------------------------"
                puts "Erro loading image..."
            end
            

        end