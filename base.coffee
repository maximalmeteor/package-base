PackageBase = (packageSettings) ->
  packageSettings.mixins = [] unless packageSettings.mixins?

  class PackageBase
    if 'logging' in packageSettings.mixins
    # Logging
      @_loggingEnabled = false

      @enableLogging: ->
        @_loggingEnabled = true

      log: (msg, level='debug') ->
        return unless @_loggingEnabled or level is 'warn' or level is 'error'
        console[level] "#{packageName} [#{level}]: #{msg}"


    if 'singleton' in packageSettings.mixins
    # Singleton
      @instance = null

      @getInstance = ->
        @instance = new this() unless @instance?
        return @instance
