class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
  	# The following method prevents duplicated elements to be saved into the database. it works like a book index that prevents doble indexed elements under the same index number.
  	add_index :users, :email, unique: true
  end
  # The fixtures/users.yml contain sample data for the test database, so in order for the test to pass, we must delete the whole file.
end
