inputASM = 'ASM.txt' #Arquivo de entrada de contém o assembly
outputBIN = 'BIN.txt' #Arquivo de saída que contém o binário formatado para VHDL
outputMIF = 'initROM.mif' #Arquivo de saída que contém o binário formatado para .mif

noveBits = True

#definição dos mnemônicos e seus
#respectivo OPCODEs (em Hexadecimal)
mne =	{ 
       "NOP":   "0",
       "LDA":   "1",
       "SOMA":  "2",
       "SUB":   "3",
       "LDI":   "4",
       "STA":   "5",
       "JMP":   "6",
       "JEQ":   "7",
       "CEQ":   "8",
       "JSR":   "9",
       "RET":   "A",
       "AND":   "B"
}

lista_labels = []

dic = {}

def num_to_vhdl(num):
    if(int(num) > 255 ):
        num = str(int(num) - 256)
        num = hex(int(num))[2:].upper().zfill(2)
        num = "\" & '1' & x\"" + num
    else:
        num = hex(int(num))[2:].upper().zfill(2)
        num = "\" & '0' & x\"" + num
    return num
 
#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits)
def  converteArroba(line):
    line = line.split('@')
    line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line


    
#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits) e...
#concatena com o bit de habilita 
def  converteArroba9bits(line):
    label = False
    line = line.split('@')
    if line[1] in lista_labels:
        label = True
        for linha in dic.items():
            if line[1] + ':' == linha[0]:
                num = num_to_vhdl(linha[1])
                line.append(num)
        
        return label, line
    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '0' & x\"" + line[1]
    line = ''.join(line)
    return label,line
 
#Converte o valor após o caractere cifrão'$'
#em um valor hexadecimal de 2 dígitos (8 bits) 
def  converteCifrao(line):
    line = line.split('$')
    line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line

#Converte o valor após o caractere arroba '$'
#em um valor hexadecimal de 2 dígitos (8 bits) e...
#concatena com o bit de habilita 
def  converteCifrao9bits(line):
    line = line.split('$')
    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '0' & x\"" + line[1]
    line = ''.join(line)
    return line
        
#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line
    
#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line = line.split(' ')
    line[0] = mne[line[0]]
    line = "".join(line)
    return line

def trataLabel(line):
    line = line.replace(":","")
    return line

lista = []



with open(inputASM, "r") as f: #Abre o arquivo ASM
    lines = f.readlines() #Verifica a quantidade de linhas
    
    
with open(outputBIN, "w+") as f:  #Abre o destino BIN

    for inst in lines:
        inst = inst.replace('\n',"")
        lista.append(inst)
        if ":" in inst:
            inst = inst.replace(":","")
            lista_labels.append(inst+"")
    
    for inst in lista:
        if ":" in inst:
            dic[inst] = lista.index(inst)


    cont = 0 #Cria uma variável para contagem    
    for line in lines:    
        #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug

        if ":" in line: #LABELS
            print(1)
            line = line.replace("\n", "")
            print("tmp(" + str(cont) + ') := x"0" & ' + "'0'" + ' & x"00"; -- NOP #'+ line + "pra pular na linha " + str(cont))
            cont+=1
        
        #Se a linha for válida para conversão, executa
        else:
            
            #Exemplo de linha => 1. JSR @14 #comentario1
            comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
            instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14

            instrucaoLine = trataMnemonico(instrucaoLine) #Trata o mnemonico. Ex(JSR @14): x"9" @14
                  
            if '@' in instrucaoLine: #Se encontrar o caractere arroba '@' 
                if noveBits == False:
                    instrucaoLine = converteArroba(instrucaoLine) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                else:
                    label, instrucaoLine = converteArroba9bits(instrucaoLine) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"

                    if label == True:
                        print(2)
                        line = 'tmp('+ str(cont)+') := x"' + instrucaoLine[0] + instrucaoLine[2] + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN
                    else:
                        print(3)
                        line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN

            elif '$' in instrucaoLine: #Se encontrar o caractere cifrao '$'
                if noveBits == False:
                    instrucaoLine = converteCifrao(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                else:
                    instrucaoLine = converteCifrao9bits(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                print(4)            
                line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN

            
                
            elif ":" in instrucaoLine:
                print("a")
                instrucaoLine = "Label:" + comentarioLine + '\n'                                                                                               #Entrada => 1. JSR @14 #comentario1
                
            else: #Senão, se a instrução nao possuir nenhum imediato, ou seja, nao conter '@' ou '$'
                instrucaoLine = instrucaoLine.replace("\n", "") #Remove a quebra de linha
                if noveBits == False:
                    instrucaoLine = instrucaoLine + '00' #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                else:
                    instrucaoLine = instrucaoLine + "\" & " + "\'0\' & " + "x\"00" #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                
                print(5)
                line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN
                                                                                                       #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1
                                        
            cont+=1 #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line) #Escreve no arquivo BIN.txt
            
            print(line,end = '') #Print apenas para debug
            
