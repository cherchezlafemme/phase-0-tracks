class TodoList 
attr_accessor :list

def initialize (tasks)
 @list = tasks
end

def get_items
  list
end

def add_item (item)
  list << item
end

def delete_item(item)
  list.delete(item)
end

def get_item(index)
  list.at(index)
end

end