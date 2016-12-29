pack = Packages.register
  name: 'fetch-ftp'
  description: 'An interface for the Fetch FTP client.'
  applications: ['com.fetchsoftworks.Fetch']

pack.implement
  'command-line:change-directory': ->
    @key 'g', 'command shift'
  'ftp:open-directory': ->
    @key 'o', 'command'
  'object:refresh': ->
    @key 'r', 'command'
  'command-line:parent-directory': ->
    @key 'up', 'command'
  'object:backward': ->
    @key '[', 'command'
  'object:forward': ->
    @key ']', 'command'
  'ftp:edit-file': ->
    @key 'j', 'command'
  # 'common:find': ->
  # doesn't exist in fetch
