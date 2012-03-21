Ext.Loader.setConfig {enabled:true}
Ext.application
    name: 'App'
    controllers: ['main']
    launch: () ->
      panel = Ext.create 'Ext.Panel',
        fullscreen: true,
        layout:
          type: 'hbox'
        items: [
          xtype: 'list'
          itemTpl: '<div class="contact">{name}</div>'
          id: 'userList'
          store: 'Users'
          flex: 1
        ]