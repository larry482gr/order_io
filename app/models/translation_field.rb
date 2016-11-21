class TranslationField < ApplicationRecord
	serialize :field_keys, JSON
end
