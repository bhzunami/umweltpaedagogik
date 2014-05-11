class @NavBarController
	constructor: ->
		activePage = @stripTrailingSlash window.location.pathname
		$('#nav ul li a').each (i, el) ->
			#currentPage = @stripTrailingSlash $(el).attr('href') #Does not work???!!!???
			if $(el).attr('href').substr(-1) == '/'
				currentPage = $(el).attr('href').substr(0, $(el).attr('href').length - 1)
			else
				currentPage = $(el).attr('href')
			$(el).parent().addClass 'current_page_item' if activePage == currentPage

	stripTrailingSlash: (str) ->
		return str.substr(0, str.length - 1) if str.substr(-1) == '/'
		str