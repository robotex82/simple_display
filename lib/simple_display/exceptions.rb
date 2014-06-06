module SimpleDisplay
  EXCEPTIONS = %w[ DisplayBlockNotDefinedException DisplayerNotDefinedException ]
  EXCEPTIONS.each { |exception| const_set(exception, Class.new(StandardError)) }
end
