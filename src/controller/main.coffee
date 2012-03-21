Ext.define 'App.controller.main',
  extend: 'Ext.app.Controller'
  stores: [
    'Users'
  ]
  config:
    refs:
      userList:
        selector: 'panel > #userList'
  init: ->
    usersStore = this.getUsersStore()
    usersStore.load
      callback: this.onUsersLoad

  onUsersLoad: (users) ->
    alert(users.length)