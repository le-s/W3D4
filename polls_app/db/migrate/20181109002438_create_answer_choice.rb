class CreateAnswerChoice < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.string :answer_text
      t.integer :question_id
      t.timestamps
    end
    add_index :answer_choices, :question_id
  end
end
