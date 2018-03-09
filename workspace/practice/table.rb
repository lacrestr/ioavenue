class Table
    @@next_table_id = 1
    attr_reader :id
    
    def initalize
        @id = @@next_table_id
        @@next_table_id += 1
    end

def preview_next_id
    @@next_table_id
    end
end

table1 = Table.new
p table1.id
p table1.preview_next_id

table2 = Table.new
p table2.id