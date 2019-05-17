Sequel.migration do
    change do
        create_table :permissions do
            primary_key :id
            foreign_key :user_id, :users, :null => false
            column :permission_level, 'enum("read_only", "read_write")', :null => false 
            DateTime :created_at
        end
    end
end