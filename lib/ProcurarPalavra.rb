class ProcurarPalavra
    
    attr_reader :grupo_de_palavras
    attr_accessor :tipo_palavra

    def initialize(grupo_de_palavras = [])
        @grupo_de_palavras = grupo_de_palavras
    end

    def escolher_palavra(tipo_de_palavra_que_vai_usar)

        grupo_de_palavras = []
        File.open(File.expand_path("../db/#{tipo_de_palavra_que_vai_usar.to_s}",__FILE__), 'r') do |arq1|

            while line1 = arq1.gets
            grupo_de_palavras.push(line1.to_s)
            end
        end

        grupo_de_palavras.sample.downcase
    end
end