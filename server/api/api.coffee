Api = new Restivus
    useDefaultAuth: true
    prettyJson: true

Api.addRoute 'cards', authRequired: false, 
    get: ->
        (Cards.find {}, {title: 1}).fetch()