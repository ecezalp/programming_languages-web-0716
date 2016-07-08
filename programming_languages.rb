def reformat_languages(languages)
new_hash = {}
languages.each do |k1, v1|
  v1.each do |k2, v2|
    if !new_hash.key?(k2)
      new_hash[k2] = v2
    end
    if !(new_hash[k2].key?(:style))
      new_hash[k2][:style] = []
    end
    if !(new_hash[k2][:style].include?(k1))
      new_hash[k2][:style] << k1
    end
  end
end
new_hash
end
