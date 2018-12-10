class AddImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image, :string
  end

  def self.up
    change_table :products do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :products, :image
  end
end


end
