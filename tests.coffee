settings =
  name: 'TestPackage'
  mixins: ['logging', 'singleton']

class TestPackage extends PackageBase settings
  test: -> true

Tinytest.add 'PackageBase - init', (test) ->
  instance = new TestPackage()
  test.isTrue instance.test()

Tinytest.add 'PackageBase - logging', (test) ->
  test.isTrue TestPackage.enableLogging?
  TestPackage.enableLogging()
  TestPackage.log 'test'


Tinytest.add 'PackageBase - singleton', (test) ->
  test.isTrue TestPackage.getInstance() instanceof TestPackage
