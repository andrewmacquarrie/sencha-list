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
      userList:
        selector: 'panel > list'

  init: ->
    this.control
      '#showName':
        tap: this.showNameClick
    usersStore = this.getUsersStore()
    debugger
    usersStore.load
      callback: this.onUsersLoad
      scope: this
    showNameClick: ->
      name = this.getNameInput().getValue()
      this.getNameOutput().setHtml("Hello #{name}")
      
  onUsersLoad: () ->
    usersList = this.getUserList()