Ext.define 'App.controller.main',
  extend: 'Ext.app.Controller'
  views: [
    'MainForm'
    'NameDisplay'
  ]
  stores: ['Users']
  config:
    refs:
      nameInput:
        selector: 'panel > #nameInput'
      nameOutput:
        selector: 'panel > #nameOutput'
      userList:
        selector: 'panel > list'

  init: ->
    this.control
      '#showName':
        tap: () ->
          name = this.getNameInput().getValue()
          noout = this.getNameOutput()
          noout.setHtml("Hello #{name}")
    usersStore = this.getUsersStore()
    usersStore.load
      callback: this.onUsersLoad
      scope: this

  onUsersLoad: (users) ->
    debugger
    usersList = this.getUserList()