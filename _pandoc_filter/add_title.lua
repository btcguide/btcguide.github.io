function Para(elem)
    if #elem.content == 1 and elem.content[1].t == "Image" then
      local img = elem.content[1]    
      if img.classes:find('markdown',1) then
        local f = io.open(img.src, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()

        -- now we need to create a header from the metadata
        local title=pandoc.utils.stringify(doc.meta.title) or "Title has not been set"
         local newHeader=pandoc.Header(1, {pandoc.Str(title)})
        table.insert(doc.blocks, 1, newHeader) 
        return doc.blocks
      end
    end
end