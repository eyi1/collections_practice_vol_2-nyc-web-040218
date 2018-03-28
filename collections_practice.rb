def begins_with_r (tools)
  tools.all? do |word|
  if word[0] == "r"
    true
  else
    false
  end
end

end

def contain_a (list)
list.select {|word| word.include?("a")}

end

def first_wa (list)
  list.find do |word|
    word[0..1] == "wa"
  end
end


def remove_non_strings (list)
list.delete_if do |word|
  word.class != String
end
end


def count_elements (list)

  list.group_by(&:itself)
   .map{|k, v| k.merge(count: v.length)}
end

def merge_data (list)
l1[0].values.map.with_index {|l, i| l2[i].merge(l)}
end
