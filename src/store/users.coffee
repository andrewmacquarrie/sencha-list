Ext.define 'App.store.Users',
  extend: 'Ext.data.Store'
  requires: 'App.model.User'
  config:
    model: 'App.model.User'
    autoLoad: true
    proxy:
      type: 'ajax'
      url: 'stuff.json'
      reader:
        type: 'json'
        root: 'results'