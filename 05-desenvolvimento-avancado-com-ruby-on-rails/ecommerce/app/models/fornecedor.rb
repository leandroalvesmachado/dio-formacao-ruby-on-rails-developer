class Fornecedor < ApplicationRecord
  self.table_name = "fornecedores"
  attr_accessor :senha_confirmation

  belongs_to :fornecedor_tipo, class_name: "FornecedorTipo", foreign_key: "fornecedor_tipo_id"

  validates_presence_of :nome, :cnpj, :email, :fornecedor_tipo_id
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP, allow_blank: true # valida o formato do email e permite que o campo seja null
  # validates_format_of :cep, with: /\A\d{5}-\d{3}\z/, allow_blank: true  # valida o formato do cep e permite null
  validates_format_of :cep, with: /\A\d{5}-\d{3}\z/, allow_blank: true, on: :create  # valida o formato do cep apenas no método create e permite null
  # validates_uniqueness_of :email, case_sensitive: false # valida o campo email como unico na tabela do banco de dados
  validates_uniqueness_of :email, case_sensitive: false, scope: :cnpj # só ativa a validação de acordo com o scope do cnpj (combinação de chaves)
  validates_confirmation_of :senha # validação de confirmação
  validates_acceptance_of :termos_de_uso # validação de aceitação

  # validação personalizada
  validate :precisa_ter_cnpj_nome_email_iguais

  private

    def precisa_ter_cnpj_nome_email_iguais
      return true
      if self.cnpj != self.nome && self.cnpj != self.email
        errors.add("CNPJ", "precisa ser igual ao nome e email")
      end
    end
end
