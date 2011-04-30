require 'rexml/document'
require 'rexml/formatters/pretty'
include REXML

class ApplicationController < ActionController::Base
  protect_from_forgery
end


class MySVG 
  attr :xml, true
  attr :root, true
  attr :width
  attr :height
  
  def initialize width, height
    @xml = Document.new
    @width = width.to_f
    @height = height.to_f

    @root = Element.new("svg")
    @root.attributes["xmlns"]    = "http://www.w3.org/2000/svg"
    @root.attributes["xmlns:xl"] = "http://www.w3.org/1999/xlink" 
    @root.attributes["version"]  = "1.1" 
    @root.attributes["viewBox"]  = "0 0 #{@width} #{@height}" 
    @root.attributes["width"]    = "#{@width}"
    @root.attributes["height"]   = "#{@height}"

    @xml.add_element @root
  end
  
  
  def bar index, domain, value
    rect = Element.new("rect")
    rect.attributes["x"] = (index.to_f/domain.to_f) * @width
    rect.attributes["y"] = @height - (value * @height)
    rect.attributes["width"] = @width/domain
#    rect.attributes["height"] = @height - (value * @height)
    rect.attributes["height"] = (value * @height)
    rect.attributes["fill"] = "#8899cc"
    
    @root.add_element rect
  end


  def write filepath
    f = File.new("public/images/#{filepath}", "w")
    formatter = REXML::Formatters::Pretty.new
    s = ""

    @xml << XMLDecl.new

    formatter.write @xml, s
    #puts s

    f.write(s)
    f.close
  end
  
end
