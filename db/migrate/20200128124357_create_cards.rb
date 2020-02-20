class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :number,                null: false
      t.integer :validated_date_year,   null:false
      t.integer :validated_date_month,  null:false
      t.integer :security_number,       null:false
      t.references :user, foreign_key: true

      t.string :customer_id, null: false
      t.string :card_id, null: false

      # 新たに追加した2行について
      # セキュリティーの観点からカード情報そのものをDBに保存することは禁止されている(改正割賦販売法)。
      # そのため、pay.jpに保管されている情報を顧客IDやカードIDで呼び出すことで情報取得や支払いなどに対応する。
      # ここで追加した2行は、customer_idは顧客ID情報(pay.jpから返ってくるデータ)、card_idはカードID情報(pay.jpから返ってくるデータ)を意味しており、16桁の番号、有効期限、セキュリティコードを渡すとpay.jpから返ってくる。
      # pay.jp関係の実装が上手くいったことを確認した後、number, validated_date_yewr, validated_date_month, security_numberは削除する。
      # 注意：card_idはトークンではない！
      # 参考：http://payjp-announce.hatenablog.com/entry/2017/11/10/182738

      t.timestamps
    end
  end
end
