module BasicsHelper
  
  
  # AJAX stuff from https://github.com/rails/prototype_legacy_helper/blob/c91b90/lib/prototype_helper.rb#L359-365
  # There is apparently a better way to do this in Rails 3, but I haven't researched what that is...  [tap]
  
  
  def build_observer(klass, name, options = {})
    if options[:with] && (options[:with] !~ /[\{=(.]/)
      options[:with] = "'#{options[:with]}=' + encodeURIComponent(value)"
    else
      options[:with] ||= 'value' unless options[:function]
    end

    callback = options[:function] || remote_function(options)
    javascript = "new #{klass}('#{name}', "
    javascript << "#{options[:frequency]}, " if options[:frequency]
    javascript << "function(element, value) {"
    javascript << "#{callback}}"
    javascript << ")"
    javascript_tag(javascript)
  end
  
  
  def observe_field(field_id, options = {})
      if options[:frequency] && options[:frequency] > 0
        build_observer('Form.Element.Observer', field_id, options)
      else
        build_observer('Form.Element.EventObserver', field_id, options)
      end
    end
    
    
end
