PackageBase = (packageName) ->
  class PackageBase
    @_loggingEnabled = false

    @enableLogging: ->
      @_loggingEnabled = true

    @log: (msg, level) ->
      return unless @_loggingEnabled or level is 'warn' or level is 'error'
      console[level] "#{packageName} [#{level}]: #{msg}"
