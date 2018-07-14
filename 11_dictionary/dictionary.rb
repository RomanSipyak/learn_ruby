class Dictionary
  def entries
    @entries ||= {}
  end

  def add(hash)
    if hash.is_a?(Hash)
      entries.merge!(hash)
    else
      entries.store(hash, nil)
    end
  end

  def include?(key_word)
    entries.key?(key_word)
  end

  def find(key_word)
    entries.select { |k, v| k.start_with?(key_word) }
  end

  def printable
    str = ''
    entries.sort.to_h.each { |k, v| str.concat("[#{k}] \"#{v}\"\n") }
    str.chomp
  end

  def keywords
    entries.sort.to_h.keys
  end
end
