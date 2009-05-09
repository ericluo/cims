module NavigationHelpers
  def path_to(page_name)
    case page_name
    
    when /homepage/
      root_path
    
    # Add more page name => path mappings here
    
    else
      eval("#{page_name}_path")
      # raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end

World(NavigationHelpers)
