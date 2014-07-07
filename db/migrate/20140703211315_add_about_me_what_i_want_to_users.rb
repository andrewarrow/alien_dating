class AddAboutMeWhatIWantToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about_me, :string
    add_column :users, :what_i_want, :string
  end
end
