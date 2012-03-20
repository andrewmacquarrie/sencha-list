Ext.define 'App.view.mainForm',
  extend: 'Ext.form.Panel'
  alias: 'widget.mainForm',
  config:
    items: [
      xtype: 'list'
      itemTpl: '<div class="contact">{name}</div>'
      id: 'userList'
      store: 'Users'
    ]