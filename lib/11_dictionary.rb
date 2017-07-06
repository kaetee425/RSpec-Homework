class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries

  def initialize(entries = {})
    @entries = entries
  end

  def add(definitions)
    # definitions.each do |k, v|
    #   @entries[k] = v
    # end
    if definitions.instance_of?(String)
      @entries[definitions] = nil
    else
      @entries.merge!(definitions)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    self.keywords.include?(key)
  end

  def find(value)
    @entries.select {|k, v| k.include?(value)}
  end

  def printable
    ans = ""
    sort = @entries.sort_by {|k, v| k}
    sort.each do |k, v|
      ans << "[#{k}] \"#{v}\"\n"
    end
    ans.strip
  end

end
