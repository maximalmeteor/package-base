class TestPackage extends PackageBase('TestPackage')
  test: -> true

Tinytest.add 'PackageBase - init', (test) ->
  instance = new TestPackage()
  test.isTrue instance.test()
