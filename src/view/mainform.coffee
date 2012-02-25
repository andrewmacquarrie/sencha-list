Ext.define 'App.view.MainForm',
  extend: 'Ext.form.Panel'
  alias: 'widget.mainForm',
  config:
    items: [
      xtype: 'textfield'
      label: 'Name'
      id: 'nameInput'
    ,
      xtype: 'button'
      text: 'show'
      id: 'showName'
    ]