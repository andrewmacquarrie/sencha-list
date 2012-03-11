Ext.define 'App.controller.main',
  extend: 'Ext.app.Controller'
  config:
    views: [
      'MainForm'
      'NameDisplay'
    ]
    refs:
      nameInput:
        selector: 'panel > #nameInput'
      nameOutput:
        selector: 'panel > #nameOutput'

  init: ->
    scope: this
    this.control
      '#showName':
        tap: () ->
          name = this.getNameInput().getValue()
          noout = this.getNameOutput()
          noout.setHtml("Hello #{name}")

  launch: ->
    debugger
    usersStore = this.getUsersStore()
    usersStore.load
      callback: this.onUsersLoad

  onUsersLoad: () ->
    debugger
    