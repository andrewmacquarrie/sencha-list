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

<<<<<<< HEAD
  onUsersLoad: (users) ->
    debugger
    usersList = this.getUserList()
=======
  onUsersLoad: () ->
    debugger
    
>>>>>>> 70784ffbbd4d7e0bb202d3e9402ce2d9e7b761f8
