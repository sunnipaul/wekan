Api = new Restivus
    useDefaultAuth: true
    prettyJson: true

Api.addRoute 'cards', authRequired: false, 
    get: ->
        (Cards.find {}, {title: 1}).fetch()


		
Api.addRoute 'accounts', authRequired: true,
	post: ->
		count = (Accounts.find {}).count()
		items = (Accounts.find {}, {combrief: 1}).fetch()
		
		start = parseInt @bodyParams.start
		limit = parseInt @bodyParams.limit
		
		success: true
		results: count 
		rows: items.slice start, start + limit