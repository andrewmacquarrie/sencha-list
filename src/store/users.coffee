Ext.define 'App.store.Users',
  extend: 'Ext.data.Store'
  requires: 'App.model.User'
  config:
    model: 'App.model.User'
    autoLoad: true