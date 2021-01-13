function fix_path (path)
  return '.' .. path
end


function skip_include(el)

	for i, item in ipairs(el) do
				el[i] = pandoc.walk_block(item, {
      Image = function (element)
	        element.src = fix_path(element.src)
            return element
		   end
		   })
		   
		   el[i] = pandoc.walk_block(el[i], {
      Str = function (element)
	        if element.text:find('{:width',1) then
	        element.text = ("{width=")
			end
            return element
		   end
		   })
	
		if item == nil or item.content == nil then
		   io.stderr:write(" ")
		elseif item.content[1].t == nil then
		   io.stderr:write(" ")
		elseif #item.content >= 1 and item.content[1].t == "Str" then
		   local str = item.content[1]
		   if str.text:find('{%%',1) then
			  io.stderr:write(" ")
			  el[i] = pandoc.Para(pandoc.Str(""))
		   elseif str.text:find('{:width',1) then
		      io.stderr:write(" ")
			  el[i] = pandoc.Para(pandoc.Str(""))
		   end
		elseif #item.content == 1 and item.content[1].t == "Image" then
		    io.stderr:write(fix_path(item.content[1].src))
			el[i].content[1].src = fix_path(item.content[1].src)
	    end
	end
	return el 
end

function read_markdown(filename)
	local f = io.open(filename, 'r')
	local content = f:read('*a')
	f:close()
	return content
end

function process_content(content, header_level)
	local doc = pandoc.read(content)

	-- now we need to create a header from the metadata
	local title=pandoc.utils.stringify(doc.meta.title) or "Title has not been set"
	 local newHeader=pandoc.Header(header_level, {pandoc.Str(title)})
	table.insert(doc.blocks, 1, newHeader)
	return skip_include(doc.blocks)
end


function filter_content(content)
    if string.find(content, '{%% include hw/psbt.md %%}', 1) ~= nil then
		io.stderr:write("hw/psbt.md")
		local new_content = read_markdown("./_includes/hw/psbt.md")
		content = string.gsub(content, "{%% include hw/psbt.md %%}", new_content)
    elseif string.find(content, '{%% include hw/wired_airgap.md %%}', 1) ~= nil then
		io.stderr:write("hw/wired_airgap.md")
		local new_content = read_markdown("./_includes/hw/wired_airgap.md")
		content = string.gsub(content, "{%% include hw/wired_airgap.md %%}", new_content)
	elseif string.find(content, '{%% include hw/udev.md %%}', 1) ~= nil then
		io.stderr:write("hw/udev.md")
		local new_content = read_markdown("./_includes/hw/udev.md")
		content = string.gsub(content, "{%% include hw/udev.md %%}", new_content)
	elseif string.find(content, '{%% include hw/u2f.md %%}', 1) ~= nil then
		io.stderr:write("hw/u2f.md")
		local new_content = read_markdown("./_includes/hw/u2f.md")
		content = string.gsub(content, "{%% include hw/u2f.md %%}", new_content)
	elseif string.find(content, '{%% include hw/stateless.md %%}', 1) ~= nil then
		io.stderr:write("hw/stateless.md")
		local new_content = read_markdown("./_includes/hw/stateless.md")
		content = string.gsub(content, "{%% include hw/stateless.md %%}", new_content)
	elseif string.find(content, '{%% include hw/shitcoins.md %%}', 1) ~= nil then
		io.stderr:write("hw/shitcoins.md")
		local new_content = read_markdown("./_includes/hw/shitcoins.md")
		content = string.gsub(content, "{%% include hw/shitcoins.md %%}", new_content)
	elseif string.find(content, '{%% include hw/python.md %%}', 1) ~= nil then
		io.stderr:write("hw/python.md")
		local new_content = read_markdown("./_includes/hw/python.md")
		content = string.gsub(content, "{%% include hw/python.md %%}", new_content)
	elseif string.find(content, '{%% include hw/experts.md %%}', 1) ~= nil then
		io.stderr:write("hw/experts.md")
		local new_content = read_markdown("./_includes/hw/experts.md")
		content = string.gsub(content, "{%% include hw/experts.md %%}", new_content)
	elseif string.find(content, '{%% include hw/closed_source.md %%}', 1) ~= nil then
		io.stderr:write("hw/closed_source.md")
		local new_content = read_markdown("./_includes/hw/closed_source.md")
		content = string.gsub(content, "{%% include hw/closed_source.md %%}", new_content)
	elseif string.find(content, '{%% include hw/encouragement.md %%}', 1) ~= nil then
		io.stderr:write("hw/encouragement.md")
		local new_content = read_markdown("./_includes/hw/encouragement.md")
		new_content = string.gsub(new_content, "%%", "%%%%")
		content = string.gsub(content, "{%% include hw/encouragement.md %%}", new_content)
	elseif string.find(content, '{%% include hosted/utxo_privacy.md %%}', 1) ~= nil then
		io.stderr:write("hosted/utxo_privacy.md")
		local new_content = read_markdown("./_includes/hosted/utxo_privacy.md")
		content = string.gsub(content, "{%% include hosted/utxo_privacy.md %%}", new_content)
	elseif string.find(content, '{%% include hosted/spof.md %%}', 1) ~= nil then
		io.stderr:write("hosted/spof.md")
		local new_content = read_markdown("./_includes/hosted/spof.md")
		content = string.gsub(content, "{%% include hosted/spof.md %%}", new_content)
	elseif string.find(content, '{%% include hosted/limited_hw.md %%}', 1) ~= nil then
		io.stderr:write("hosted/limited_hw.md")
		local new_content = read_markdown("./_includes/hosted/limited_hw.md")
		content = string.gsub(content, "{%% include hosted/limited_hw.md %%}", new_content)
	elseif string.find(content, '{%% include hosted/limited_hw.md %%}', 1) ~= nil then
		io.stderr:write("hosted/benefits.md")
		local new_content = read_markdown("./_includes/hosted/benefits.md")
		content = string.gsub(content, "{%% include hosted/benefits.md %%}", new_content)
	end

	content = string.gsub(content, ":width", "width")
	content = string.gsub(content, ' class="border_image"', '')
	content = string.gsub(content, '{:class="border_image"}', '')
	content = string.gsub(content, '%(./paper%)', '(#setup-paper-wallet)')
	content = string.gsub(content, '%(paper%-advanced%)', '(#setup-paper-wallet-advanced)')
	content = string.gsub(content, '%(/disclaimer%)', '(#disclaimer)')
	content = string.gsub(content, '%(quorum%-advanced%)', '(#pick-quorum-advanced)')
	content = string.gsub(content, '%(/quorum%-advanced%)', '(#pick-quorum-advanced)')
	content = string.gsub(content, '%(/known%-issues/hw%-vendors%)', '(#hardware-wallet-vendors)')
	content = string.gsub(content, '%(/known%-issues/multisig%)', '(#multisig)')
	content = string.gsub(content, '%(/setup%-computer/%)', '(#setup-computer-overview)')
	content = string.gsub(content, '%(setup%-computer/bitcoin%-node%)', '(#configure-bitcoin-node)')
	content = string.gsub(content, '%(/setup%-computer/bitcoin%-node%)', '(#configure-bitcoin-node)')
	content = string.gsub(content, '%(../setup%-computer/computer%)', '(#configure-computer)')
	content = string.gsub(content, '%(../setup%-computer/computer%-advanced%)', '(#configure-computer-advanced)')
	content = string.gsub(content, '%(/running%-bitcoin%)', '(#configure-bitcoin-node)')
	content = string.gsub(content, '%(/known%-issues/verify%-receive%-address%)', '(#verifying-a-receive-address)')
	content = string.gsub(content, '%(/known%-issues/verify%-receive%-address#confirm%-you%-can%-retrieve%-the%-key%)', '(#confirm-you-can-retrieve-the-key)')
	content = string.gsub(content, '%(verify%-receive%-address/%)', '(#verify-receive-address)')
	content = string.gsub(content, '%(/verify%-receive%-address/%)', '(#verify-receive-address)')
	content = string.gsub(content, '%(/verify%-receive%-address%)', '(#verify-receive-address)')
	content = string.gsub(content, '%(/verify%-receive%-address/advanced%)', '(#verify-receive-address-advanced)')
	content = string.gsub(content, '%(verify%-receive%-address/advanced%)', '(#verify-receive-address-advanced)')
	content = string.gsub(content, '%(/known%-issues/hardware/coldcard%)', '(#coldcard)')
	content = string.gsub(content, '%(/known%-issues/hardware/cobo%)', '(#cobo-vault)')
	content = string.gsub(content, '%(/known%-issues/hardware/coldcard#verifying%-a%-receiving%-address%-breaks%-airgap%)', '(#verifying-a-receiving-address-breaks-airgap)')
	content = string.gsub(content, '%(/backup%-wallet/public%-keys%)', '(#backup-public-keys)')
	content = string.gsub(content, '%(/setup%-wallets/paper%)', '(#setup-paper-wallet)')
	content = string.gsub(content, '%(setup%-wallets/paper%)', '(#setup-paper-wallet)')
	content = string.gsub(content, '%(../setup%-wallets/paper%)', '(#setup-paper-wallet)')
	content = string.gsub(content, '%(../setup%-wallets/cobo%)', '(#setup-cobo-vault)')
	content = string.gsub(content, '%(setup%-wallets/paper#generate%-seed%)', '(#generate-seed)')
	content = string.gsub(content, '%(computer%)', '(#configure-computer)')
	content = string.gsub(content, '%(bitcoin%-node%)', '(#configure-bitcoin-node)')
	content = string.gsub(content, '%(specter%)', '(#install-specter-desktop)')
	content = string.gsub(content, '%(paper%)', '(#setup-paper-wallet)')
	content = string.gsub(content, '%(cobo%)', '(#setup-cobo-vault)')
	content = string.gsub(content, '%(coldcard%)', '(#setup-coldcard)')
	content = string.gsub(content, '%(coordinate%-multisig%)', '(#coordinate-multisig)')
	content = string.gsub(content, '%(/setup%-computer/specter%)', '(#install-specter-desktop)')
	content = string.gsub(content, '%(../verify%-receive%-address/coldcard%)', '(#verify-receive-address-on-coldcard)')
	content = string.gsub(content, '%(../verify%-receive%-address/cobo%)', '(#verify-receive-address-on-cobo-vault)')
	content = string.gsub(content, '%(../verify%-receive%-address/specter%)', '(#verify-receive-address-on-specter)')
	content = string.gsub(content, '%(/verify%-receive%-address/coldcard%)', '(#verify-receive-address-on-coldcard)')
	content = string.gsub(content, '%(/verify%-receive%-address/coldcard%-advanced%)', '(#verify-receive-address-on-coldcard-advanced)')
	content = string.gsub(content, '%(coldcard%-advanced%)', '(#verify-receive-address-on-coldcard-advanced)')
	content = string.gsub(content, '%(/verify%-receive%-address/cobo%)', '(#verify-receive-address-on-cobo-vault)')
	content = string.gsub(content, '%(/verify%-receive%-address/specter%)', '(#verify-receive-address-on-specter)')
	content = string.gsub(content, '## Table of Contents', '')
	content = string.gsub(content, '%(/known%-issues/seeds%-and%-privacy%)', '(#seeds-and-privacy)')
	content = string.gsub(content, '%(/why%-multisig%-advanced#shamirs%-secret%-sharing%-scheme%)', '(#shamirs-secret-sharing-scheme)')
	content = string.gsub(content, '%(/backup%-wallet/public%-keys%-advanced#extended%-public%-key%-info%)', '(#extended-public-key-info)')
	content = string.gsub(content, '%(advanced%)', '(#emergency-recovery-advanced)')
	content = string.gsub(content, '%(/known%-issues/hardware/trezor%)', '(#trezor)')
	content = string.gsub(content, '%(/known%-issues/hardware/specter%-diy%)', '(#specter-diy)')
	content = string.gsub(content, '%(/known%-issues/hosted/unchained%)', '(#unchained-capital)')
	content = string.gsub(content, '%(/known%-issues/hosted/casa%)', '(#casa)')
	content = string.gsub(content, '%(/known%-issues/cost%)', '(#cost)')
	content = string.gsub(content, '%(/known%-issues/complexity%)', '(#complexity)')
	content = string.gsub(content, '%(/known%-issues/software/seedpicker%)', '(#seedpicker)')
	content = string.gsub(content, '%(/backup%-wallet/seeds%)', '(#backup-seeds)')
	content = string.gsub(content, '%(/setup%-wallets/%)', '(#setup-hardware-wallet-overview)')
	content = string.gsub(content, '%(/setup%-wallets%)', '(#setup-hardware-wallet-overview)')
	content = string.gsub(content, '%(/why%-multisig%)', '(#why-multisig)')
	content = string.gsub(content, '%(/why%-multisig%-advanced%)', '(#why-multisig-advanced)')
    content = string.gsub(content, '%(/assets/guide/bip39_wordlist.pdf%)', '(https://github.com/btcguide/btcguide.github.io/blob/master/assets/guide/bip39_wordlist.pdf)')
    content = string.gsub(content, '%(/quorum%-advanced#3%-of%-5%-is%-excellent%)', '(#3-of-5-is-excellent)')
    content = string.gsub(content, '%(advanced#redundant_address_verification%)', '(#verify-receive-address-advanced)')
	content = string.gsub(content, '%(/backup%-wallet%)', '(#backup-wallet)')
	content = string.gsub(content, '%(/backup%-wallet/seeds%)', '(#backup-seeds)')
	content = string.gsub(content, '%(/backup%-wallet/public%-keys%)', '(#backup-public-keys)')

	return content
end




function Para(elem)
    if #elem.content == 1 and elem.content[1].t == "Image" then
      local img = elem.content[1]    
      if img.classes:find('markdown',1) then
        local content =read_markdown(img.src)
		content = filter_content(content)
		return process_content(content, 1)
	  elseif img.classes:find('markdown_23',1) then
        local content = read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n## ', '\n### ')
		return process_content(content, 1)
      elseif img.classes:find('markdown_42',1) then
        local content = read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n#### ', '\n## ')
		return process_content(content, 1)
	  elseif img.classes:find('markdown2',1) then
	    local content =read_markdown(img.src)
		content = filter_content(content)
		return process_content(content, 2)
	  elseif img.classes:find('markdown2_23',1) then
	  	local content =read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n## ', '\n### ')
		return process_content(content, 2)
	  elseif img.classes:find('markdown2_24',1) then
	  	local content =read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n## ', '\n#### ')
		return process_content(content, 2)
	  elseif img.classes:find('markdown2_43',1) then
	  	local content =read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n#### ', '\n### ')
		return process_content(content, 2)
	  elseif img.classes:find('markdown3',1) then
        local content =read_markdown(img.src)
		content = filter_content(content)
		return process_content(content, 3)
	  elseif img.classes:find('markdown3_23',1) then
        local content =read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n## ', '\n### ')
		return process_content(content, 3)
	  elseif img.classes:find('markdown3_24',1) then
        local content =read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n## ', '\n#### ')
		return process_content(content, 3)
	  elseif img.classes:find('markdown4',1) then
        local content =read_markdown(img.src)
		content = filter_content(content)
		return process_content(content, 4)
	  elseif img.classes:find('markdownskip',1) then
        local content = read_markdown(img.src)
		content = filter_content(content)
		local doc = pandoc.read(content)
		return skip_include(doc.blocks)
	  elseif img.classes:find('markdownskip_23',1) then
        local content = read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n## ', '\n### ')
		local doc = pandoc.read(content)
		return skip_include(doc.blocks)
	  elseif img.classes:find('markdownskip_24',1) then
        local content = read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n## ', '\n#### ')
		local doc = pandoc.read(content)
		return skip_include(doc.blocks)
	  elseif img.classes:find('markdownskip_34',1) then
        local content = read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n### ', '\n#### ')
		local doc = pandoc.read(content)
		return skip_include(doc.blocks)
	  elseif img.classes:find('markdownskip_42',1) then
        local content = read_markdown(img.src)
		content = filter_content(content)
		content = string.gsub(content, '\n#### ', '\n## ')
		local doc = pandoc.read(content)
		return skip_include(doc.blocks)
      end
    end
end