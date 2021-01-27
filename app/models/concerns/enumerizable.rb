module Enumerizable
  extend ActiveSupport::Concern

  included do
    extend Enumerize

    File.read("#{Rails.root}/config/locales/enumerize.ja.yml").tap do |f|
      enums = YAML.load(f)["ja"]["enumerize"][self.model_name.i18n_key.to_s]
      enums.keys.each do |k|
        enumerize k.to_sym, in: enums[k.to_s].keys
      end
    end
  end
end