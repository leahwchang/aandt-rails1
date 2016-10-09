class AddTypeToPages < ActiveRecord::Migration[5.0]
  def change
    add_reference :pages, :type, foreign_key: true
  end
end
