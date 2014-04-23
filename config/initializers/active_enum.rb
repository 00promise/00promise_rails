# Form helper integration
# require 'active_enum/form_helpers/formtastic'  # for Formtastic <2
# require 'active_enum/form_helpers/formtastic2' # for Formtastic 2.x

ActiveEnum.setup do |config|

  # Extend classes to add enumerate method
  # config.extend_classes = [ ActiveRecord::Base ]

  # Return name string as value for attribute method
  # config.use_name_as_value = false

  # Storage of values (:memory, :i18n)
  # config.storage = :memory

end

ActiveEnum.define do
  enum(:issue_type) do
    value :id => 0, :name => 'None'
    value :id => 1, :name => 'New'
    value :id => 2, :name => 'Hot issue'
  end
end