extends Control

var lista1=["a","atividade",2,false]
var lista2=[]

func _on_Button1_pressed():
	$Button1/Label.text=str(lista1)
	
func _on_Button2_pressed():
	lista2.push_back($Button2/LineEdit.text)
	$Button2/Label.text=str(lista2)

func _on_Button3_pressed():
	$Button3/Label.text="Parabens!"

func _on_Button4_pressed():
	var texto2=$Button4/LineEdit.text
	$Button4/Label.text=texto2
