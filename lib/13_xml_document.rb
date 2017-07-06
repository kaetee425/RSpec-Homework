class XmlDocument
  def initialize indent = false
    @indent = indent
    @spacing = 0
  end


  def method_missing(m, args = nil, &block)
    attributes = args || {}
    xml = ""
    if args == nil
      xml += ("  " * @spacing) if @indent
      xml += "<#{m}" #no arguemnts
    else
      xml += ("  " * @spacing) if @indent
      xml += "<#{m} "
      attributes.each_pair do |key,value|
        xml += "#{key}=\"#{value}\"" #no arguments class
      end
    end

    if block
      xml += ">"
      xml += "\n" if @indent
      @spacing += 1
      xml += yield
      @spacing -= 1
      xml << ("  " * @spacing) if @indent
      xml += "</#{m}>"
      xml += "\n" if @indent

    else
      xml += "/>"
      xml << "\n" if @indent
    end

    xml
  end

end
