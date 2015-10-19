Api = new Restivus
    apiPath: "api/"
    useDefaultAuth: true
    prettyJson: true

Api.addRoute 'cards', authRequired: false, 
    get: ->
        (Cards.find {}, {title: 1}).fetch()