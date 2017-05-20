class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages, id: :uuid do |t|
      t.belongs_to :teacher_user, null: false
      t.belongs_to :subject,      null: false

      t.string :kind_of_lesson, null: false
      t.string :comment,        null: false

      t.timestamps
    end
  end
end
