def mensagem(msg, usar_limpar_tela=true, usar_timer=true, timer=5)
  limpar_tela if usar_limpar_tela
  puts msg
  sleep(timer) if usar_timer
  limpar_tela if usar_limpar_tela
end

def mensagem_verde(msg, usar_limpar_tela=true, usar_timer=true, timer=5)
  msg = verde(msg)
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end

def mensagem_vermelho(msg, usar_limpar_tela=true, usar_timer=true, timer=5)
  msg = vermelho(msg)
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end

def mensagem_amarelo(msg, usar_limpar_tela=true, usar_timer=true, timer=5)
  msg = amarelo(msg)
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end

def mensagem_azul(msg, usar_limpar_tela=true, usar_timer=true, timer=5)
  msg = azul(msg)
  mensagem(msg, usar_limpar_tela, usar_timer, timer)
end

def vermelho(texto)
  return "\e[31m#{texto}\e[0m" # \e[31m define a cor vermelha, \e[0m redefine para a cor padrão
end

def verde(texto)
  return "\e[32m#{texto}\e[0m" # \e[32m define a cor verde, \e[0m redefine para a cor padrão
end

def amarelo(texto)
  return "\e[33m#{texto}\e[0m" # \e[33m define a cor amarela, \e[0m redefine para a cor padrão
end

def azul(texto)
  return "\e[34m#{texto}\e[0m" # \e[33m define a cor azul, \e[0m redefine para a cor padrão
end

def limpar_tela
  # Verifica se o sistema operacional é Windows
  if Gem.win_platform?
    system("cls") # Limpa o console no Windows
  else
    system("clear") # Limpa o console no Unix/Linux
  end
end