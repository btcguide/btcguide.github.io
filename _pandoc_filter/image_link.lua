function fix_path (path)
  return '.' .. path
end

function Image (element)
  element.src = fix_path(element.src)
  return element
end