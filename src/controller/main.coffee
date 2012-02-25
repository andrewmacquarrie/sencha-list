Ext.define 'App.controller.main',
  extend: 'Ext.app.Controller'
  views: [
    'MainForm'
    'NameDisplay'
  ]
  config:
    refs:
      nameInput:
        selector: 'panel > #nameInput'
      nameOutput:
        selector: 'panel > #nameOutput'

  init: ->
    this.control
      '#showName':
        tap: this.showNameClick

  showNameClick: ->
    name = this.getNameInput().getValue()
    this.getNameOutput().setHtml("Hello #{name}")