class CreateInfoForms < ActiveRecord::Migration
  def change
    create_table :info_forms do |t|
      t.string :company
      t.string :contact
      t.string :email
      t.string :location
      t.string :industry
      t.string :other1
      t.text   :description
      t.string :currentsys
      t.string :usercount
      t.string :preferredsys
      t.string :hostingpref
      t.string :implement
      t.boolean :budget
      t.string :budgetrange
      t.string :preferredbudget
      t.text   :comments
      

      t.timestamps
    end
  end
end
