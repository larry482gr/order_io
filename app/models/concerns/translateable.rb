module Translateable
  extend ActiveSupport::Concern

  included do
    after_find :set_translated_fields
  end

  private

  def set_translated_fields
    translations = Translation.where(table_name: self.class.table_name, locale: I18n.locale, reference_id: self.id).select(:fields).first
    unless translations.nil?
      self.class::TRANSLATION_FIELDS.each do |f|
        self[f] = translations.fields[f]
      end
    end
  end
end
