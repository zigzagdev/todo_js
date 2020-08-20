class CreateBulletinBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :bulletin_boards do |t|
      t.string :user_name, null: false,comment:"登録者の名前"
      t.string :title, null:false,comment: "投稿する題名"
      t.text   :content, null:false, comment:"投稿内容"

      t.timestamps
    end
  end
end
