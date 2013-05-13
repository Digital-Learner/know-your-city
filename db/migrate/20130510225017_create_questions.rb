class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :statement
      t.boolean :fact

      t.timestamps
    end
  end
end
