extends Node2D

var teste = false
var valor = 0
var numero = 0 #variável declarada com acento 
var lista = [] #variável do tipo lista faltando o "var" para se criada
var nome = "" #variável não declarada anteriormente 

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($Button/LineEdit.text) #o line edit estava sendo chamado sem o $
	nome = str($Button/LineEdit2.text) #arrumei o line edit, inverti a ordem do dado que o nome recebe e forcei uma string
	
func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=1 #não é o i, mas sim o 1. 
		lista.append(numero) #mesmo erro, variável sendo chamada de forma errada
		$Button2/Label.text += str(lista[i])+ ", " #inserindo a lista no label 
	print(lista)

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in range (len(lista)): #estrtura de repetição errada
		#cont=0 variável não declarada e sem necessidade 
		#i=0 sem necessidade
		if(lista[i]%2==0): #resto é zero se o número é par
			$Button3/Label.text += nome + "\n"
		else: #se o resto NÃO for zero, else:
			$Button3/Label.text += nome+" Baldo" + "\n" #identação
	
