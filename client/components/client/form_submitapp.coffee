
ReactiveForms.createFormBlock
    template: 'basicFormBlock'
    submitType: 'normal'
    
ReactiveForms.createElement
    template: 'basicInput'
    validationEvent: 'keyup'
    reset: (el) ->
        ($ el).val ''



BlazeComponent.extendComponent(
  template: ()->
    'form_submitapp'
  events: ->
    [
      'click .actionitem': (evt)->
        console.log @card
    ]    
).register 'form_submitapp'