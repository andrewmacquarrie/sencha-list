Ext.define 'App.store.Users',
  extend: 'Ext.data.Store'
  requires: 'App.model.User'
  storeId: 'Users'
  config:
    model: 'App.model.User'
    autoLoad: true