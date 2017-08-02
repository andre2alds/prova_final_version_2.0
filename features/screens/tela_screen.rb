class Home < Calabash::ABase
	
	def botao_cadastrar
	touch(query("* id:'cadastrar'"))
	end

	def campo_modelo_marca
	touch(query("* id:'modelo'"))
	keyboard_enter_text("RangeRover")
	hide_soft_keyboard
	end

	def campo_ano
	touch(query("* id:'ano'"))
	keyboard_enter_text("2015")
	hide_soft_keyboard
	end

	def campo_placa
	touch(query("* id:'placa'"))
	keyboard_enter_text("FGL2015")
	hide_soft_keyboard
	end

	def campo_km
	touch(query("* id:'km'"))
	keyboard_enter_text("3098")
	hide_soft_keyboard
	end

	def campo_valor
	touch(query("* id:'valor'"))
	keyboard_enter_text("1.00000")
	hide_soft_keyboard
	end

	def botao_retorna_tela_principal
		sleep 1
		press_back_button
	end

	def botao_consulta
		touch(query("* id:'consulta'"))
	end

	def rolar_pagina
		sleep 1
		perform_action('drag', 70, 10, 80, 0, 3)
	end

   	def confirma_cadastro
	wait_for_elements_exist(["* {text CONTAINS 'RangeRover'}"], :timeout => 20)
	wait_for_elements_exist(["* {text CONTAINS '2015'}"], :timeout => 20)
	wait_for_elements_exist(["* {text CONTAINS '3098'}"], :timeout => 20)
	wait_for_elements_exist(["* {text CONTAINS '1.00000'}"], :timeout => 20)
	p "Carro cadastrado com sucesso!"
	end
	
	def preenchimento_de_dados
		campo_modelo_marca
		campo_ano
		campo_placa
		campo_km
		campo_valor
	end

end