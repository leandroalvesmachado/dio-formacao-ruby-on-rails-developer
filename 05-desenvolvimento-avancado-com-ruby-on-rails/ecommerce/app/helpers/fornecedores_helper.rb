module FornecedoresHelper
  def formata_data(data)
    return data.strftime('%d/%m/%Y %H:%M')
  end
end
