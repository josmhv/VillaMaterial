class AddingProduct < ApplicationRecord
  def self.search(search)
    if search
      products = AddingProduct.find_by("name ILIKE ?", AddingProduct.sanitize_sql_like(search) + "%")
      if products == nil
        self.all
      else
        products = AddingProduct.where("name ILIKE ?", AddingProduct.sanitize_sql_like(search) + "%")
      end
    else
      self.all
    end
  end
end
