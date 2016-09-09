renderInstances = []
actions = []
controller = null

Polymer

  is: 'conpinion-action-bar'

  properties:
    render: {type: Boolean, value: false}
    router: {type: Object}

  ready: ->
    renderInstances.push @ if @render
    unless @render
      actions = Polymer.dom(@).querySelectorAll 'conpinion-action-bar-action' unless @render
      parent = @parentNode
      parent = parent.parentNode until !parent || parent.host
      controller = parent.host if parent
    renderInstance.updateActions() for renderInstance in renderInstances

  action: (e) ->
    action = e.model.item
    @router.go action.route if action.route
    @controller[action.method]() if action.method && @controller

  updateActions: ->
    @actions = actions
    @controller = controller
