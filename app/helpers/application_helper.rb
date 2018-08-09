module ApplicationHelper
  def link_to_add_fields(name = nil, item_tax = nil, association = nil, options = nil, html_options = nil, &block)
  # If a block is provided there is no name attribute and the arguments are
  # shifted with one position to the left. This re-assigns those values.
  item_tax, association, options, html_options = name, item, association, options if block_given?

  options = {} if options.nil?
  html_options = {} if html_options.nil?

  if options.include? :locals
    locals = options[:locals]
  else
    locals = { }
  end

  if options.include? :partial
    partial = options[:partial]
  else
    partial = association.to_s.singularize + '_fields'
  end

  # Render the form fields from a file with the association name provided
  new_object = item_tax.object.class.reflect_on_association(association).klass.new
  fields = item_tax.fields_for(association, new_object, child_index: 'new_record') do |builder|
    render(partial, locals.merge!( item_tax: builder))
  end

  # The rendered fields are sent with the link within the data-form-prepend attr
  html_options['data-form-prepend'] = raw CGI::escapeHTML( fields )
  html_options['href'] = '#'

  content_tag(:a, name, html_options, &block)
end
end
