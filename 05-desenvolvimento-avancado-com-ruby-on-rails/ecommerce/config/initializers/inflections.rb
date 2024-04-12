# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, "\\1en"
#   inflect.singular /^(ox)en/i, "\\1"
#   inflect.irregular "person", "people"
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym "RESTful"
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.clear :all

  # Pluralizações
  inflect.plural(/$/, 's')
  inflect.plural(/(r|s|z)$/i, '\1es')
  inflect.plural(/al$/i, 'ais')
  inflect.plural(/el$/i, 'eis')
  inflect.plural(/ol$/i, 'ois')
  inflect.plural(/ul$/i, 'uis')
  inflect.plural(/([^aeou])il$/i, '\1is')
  inflect.plural(/m$/i, 'ns')
  inflect.plural(/ão$/i, 'ões')
  inflect.plural(/^(alem|c|p)ão$/i, '\1ães')
  inflect.plural(/([^ê])ão$/i, '\1ãos')
  inflect.plural(/^(irm|m)ão$/i, '\1ãos')
  inflect.plural(/(j|l|n|on|r|s|z)$/i, '\1es')
  inflect.plural(/^(|g)ás$/i, '\1ases')
  inflect.plural(/é$/i, 'és')
  inflect.plural(/([^áéó])s$/i, '\1ses')
  inflect.plural(/z$/i, 'zes')
  inflect.plural(/x$/i, 'xes')

  # Singularizações
  inflect.singular(/s$/i, '')
  inflect.singular(/ões$/i, 'ão')
  inflect.singular(/ães$/i, 'ão')
  inflect.singular(/ais$/i, 'al')
  inflect.singular(/eis$/i, 'el')
  inflect.singular(/ois$/i, 'ol')
  inflect.singular(/uis$/i, 'ul')
  inflect.singular(/([^ê])ãos$/i, '\1ão')
  inflect.singular(/(j|l|n|on|r|s|z)es$/i, '\1')
  inflect.singular(/ases$/i, 'ás')
  inflect.singular(/és$/i, 'é')
  inflect.singular(/ses$/i, 's')
  inflect.singular(/zes$/i, 'z')
  inflect.singular(/xes$/i, 'x')
end
