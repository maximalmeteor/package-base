Package.describe({
  name: 'maximum:package-base',
  version: '1.0.0',
  summary: 'Base class for new packages, providing some useful functionality like logging and utilities',
  git: 'https://github.com/maximummeteor/package-base/',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');
  api.use([
    'coffeescript',
    'mongo'
  ]);

  api.addFiles('base.coffee');
  api.export('PackageBase');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('coffeescript');
  api.use('maximum:package-base');
  api.addFiles('tests.coffee');
});
