# Desafio
# Você está trabalhando para uma empresa que utiliza extensivamente os serviços da AWS, e após algumas análises 
# a equipe de segurança identificou que algumas senhas dos usuários no IAM são fracas e podem representar um risco 
# à segurança dos dados da empresa. Para resolver esse problema, foi solicitado que você desenvolva um programa 
# capaz de analisar as senhas dos usuários e fornecer uma validação de força com base em critérios predefinidos.

# Requisitos de segurança para a senha:
# A senha deve ter no mínimo 8 caracteres.
# A senha deve conter pelo menos uma letra maiúscula (A-Z).
# A senha deve conter pelo menos uma letra minúscula (a-z).
# A senha deve conter pelo menos um número (0-9).
# A senha deve conter pelo menos um caractere especial, como !, @, #, $, %, etc.

# Entrada
# A entrada será uma única string representando a senha que precisa ser validada.

# Saída
# Seu programa deve retornar uma mensagem indicando se a senha fornecida pelo usuário atende aos requisitos de segurança ou não, 
# juntamente com um feedback explicativo sobre os critérios considerados.
# Entrada = 0101, Saída = Sua senha e muito curta. Recomenda-se no minimo 8 caracteres.
# Entrada = 030609saturno*, Saída = Sua senha atende aos requisitos de seguranca. Parabens!
# Entrada = 010203Jupiter, Saída = Sua senha nao atende aos requisitos de seguranca.

def verificar_forca_senha(senha)
  comprimento_minimo = 8

  # Critérios de validação usando expressões regulares
  tem_letra_maiuscula = /[A-Z]/.match?(senha)
  tem_letra_minuscula = /[a-z]/.match?(senha)
  tem_numero = /\d/.match?(senha)
  tem_caractere_especial = /\W/.match?(senha)

  # Convertendo a senha para minúsculas para evitar problemas de case
  senha_minuscula = senha.downcase

  # Verificar se a senha contém sequências comuns
  tem_sequencia_comum = senha_minuscula.include?("123456") || senha_minuscula.include?("abcdef")

  # Verificar se a senha contém palavras comuns
  tem_palavra_comum = senha_minuscula == "password" || senha_minuscula == "123456" || senha_minuscula == "qwerty"

  #TODO: Verificar o comprimento mínimo e critérios de validação
  if senha_minuscula.length < comprimento_minimo
    return "Sua senha e muito curta. Recomenda-se no minimo 8 caracteres."
  end

  if !tem_letra_maiuscula || !tem_letra_minuscula || !tem_numero || !tem_caractere_especial
    return "Sua senha nao atende aos requisitos de seguranca."
  end

  if tem_letra_maiuscula && tem_letra_minuscula && tem_numero && tem_caractere_especial
    return "Sua senha atende aos requisitos de seguranca. Parabens!"
  end
end

senha = gets.chomp
resultado = verificar_forca_senha(senha)
puts resultado