Ext.define 'App.model.User',
  extend: 'Ext.data.Model'
  config:
    fields: ['id', 'name']
    proxy:
      type: 'ajax'
      url: 'stuff.json'
      reader:
        type: 'json'
        rootProperty: 'results'