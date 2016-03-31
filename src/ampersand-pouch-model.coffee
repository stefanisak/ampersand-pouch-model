AmpersandModel = require 'ampersand-model'
sync = require 'ampersand-pouch-sync'

module.exports = AmpersandModel.extend
  initialize: -> @sync = sync.apply @, [ @pouch ]
  getPouchDB: -> @sync.pouchDB
  url: -> #empty
