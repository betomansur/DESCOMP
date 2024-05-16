
            
############################             
############################            
#Conversão para arquivo .mif
############################             
############################
            
with open(outputMIF, "r") as f: #Abre o arquivo .mif
    headerMIF = f.readlines() #Faz a leitura das linhas do arquivo,
                              #para fazer a aquisição do header
    
    
with open(outputBIN, "r") as f: #Abre o arquivo BIN
    lines = f.readlines() #Faz a leitura das linhas do arquivo
    
    
with open(outputMIF, "w") as f:  #Abre o destino .mif novamente
                                 #agora para preenchê-lo com o pograma

    cont = 0 #Cria uma variável para contagem
    
    #########################################
    #Preenche com o header lido anteriormente 
    for lineHeader in headerMIF:      
        if cont < 21:           #Contagem das linhas de cabeçalho
            f.write(lineHeader) #Escreve no arquivo se saída .mif o cabeçalho (21 linhas)
        cont = cont + 1         #Incrementa varíavel de contagem
   #-----------------------------------------
   ##########################################
  
    for line in lines: #Varre as linhas do código formatado para a ROM (VHDL)
    
        replacements = [('t', ''), ('m', ''), ('p', ''), ('(', ''), (')', ''), ('=', ''), ('x', ''), ('"', '')] #Define os caracteres que serão excluídos
        
        ##########################################
        #Remove os caracteres que foram definidos
        for char, replacement in replacements:
            if char in line:
                line = line.replace(char, replacement)
        #-----------------------------------------
        ##########################################
                
        line = line.split('#') #Remove o comentário da linha
        
        if "\n" in line[0]:
            line = line[0] 
        else:
            line = line[0] + '\n' #Insere a quebra de linha ('\n') caso não tenha

        f.write(line) #Escreve no arquivo initROM.mif
    f.write("END;") #Acrescente o indicador de finalização da memória. (END;)