# Source Code Layout

ManageIQ is a Rails application with the following standard layout

| File/Folder | Purpose |
|:----------- |:------- |
| app/        | Contains the controllers, models, views, helpers, mailers and assets. |
| bin/        | Contains the rails script that starts the app and can contain other scripts to setup, deploy or run the application. |
| certs/      | Certificates needed by ManageIQ Appliance. |
| config/     | Configuration of the ManageIQ application's routes, database and more. |
| config.ru   | Rack configuration for Rack based servers used to start the application. |
| db/         | Contains the current database schema, as well as the database migrations. |
| [gems/](#gems) | Libraries planned for extraction to standalone gems. |
| Gemfile     | Specification of the ManageIQ application's gem dependencies. These files are used by the Bundler gem. For more information about Bundler, see the [Bundler website](http://bundler.io).|
| [lib/](#lib)| Extended modules for the ManageIQ application. |
| log/        | ManageIQ application log files. |
| public/     | The only folder seen by the world as-is. Contains static files and compiled assets. |
| Rakefile    | This file locates and loads tasks that can be run from the command line. The task definitions are defined throughout the components of Rails. Rather than changing Rakefile, you should add your own tasks by adding files to the lib/tasks directory of your application. |
| README.md   | Overview of the ManageIQ project. |
| [spec/](#spec)       | Tests using RSpec. |
| [tools/](#tools) | Special purpose Ruby scripts that should not be executed without full understanding of what they do. |
| tmp/        | Temporary files (like cache, pid, and session files). |
| vendor/     | A place for all third-party code. |


## gems

This directory contains libraries (planned for extraction to gems) for the following:

* interfacing with various clouds and infrastructure providers
  * gems/pending/Amazon
  * gems/pending/openstack
  * gems/pending/VMwareWebService
    * Client and broker server for connecting to the VMware Virtual
      Infrastructure Management (VIM) API/Framework
* VM scanning
  * gems/pending/disk
  * gems/pending/fs
  * gems/pending/metadata
  * gems/pending/VixDiskLib
    * Ruby bindings to the VIX Disk API for connecting to the VMware virtual
      disks remotely
* standalone utility libraries
  * gems/pending/util
    * Typically, utility libraries that are NOT tied to Rails are put here. The
      benefit is that most of the code automatically loads many of the libraries
      here, so if you want to add a new Exception class, for example, look in
      miq-exception.rb, and Rails code will automatically find it.
  * gems/pending/util/extensions
    * Extensions for Ruby core classes.  Note that extensions to Rails core live
      in vmdb/lib/extensions.

## lib

  * lib/workers
    * Contains the "worker" scripts for the various types of workers as well as
      the base EVM server.  When we start a worker, these are the scripts that
      are invoked with various arguments.  Each worker has a corresponding model
      found in app/models.  Additionally, the workers have a class inheritance
      structure found in each script which directly matches the inheritance
      structure in the current configuration.  This way you can set a specific
      setting at the "worker_base" level and have it inherit for all
      subclasses, allowing overloading of configuration values when needed.
      See the documentation on the worker architecture for more details.
  * lib/extensions
    * Extensions to Rails core classes.

## spec

  * spec
    * Specs in the spec directory typically match the class path of the
      model to make it easy to find the specs.  For example, the
      ExtManagementSystem model, which lives in models/ext_management_system.rb
      would have its specs in spec/models/ext_management_system_spec.rb
  * spec/automation
    * Specs that verify the internal ManageIQ domain for Automate.  These specs
      work differently in that test import the ManageIQ domain in a before(:all)
      once before executing the specs.  Be careful they are not run in parallel
      with other tests outside of this directory.
  * spec/factories
    * [FactoryGirl](https://github.com/thoughtbot/factory_girl) factories for
      the test suite.
  * spec/migrations
    * Specs that can test migrations using an internal migration testing DSL
      located at vmdb/spec/support/migration_spec_helper.rb.
    * These should not be executed directly and should only be executed via the
      rake task.  This is because the rake task will execute the migrations in
      order and run the corresponding specs along the way.  The rake task also
      migrates down to 0 to verify all down migrations are executed.  Because of
      this, one should not raise IrreversibleMigration exceptions in down
      migrations.
  * spec/replication
    * Specs that test replication between the test database and a second
      database named vmdb_production_master.
    * These should not be executed directly and should only be executed via the
      rake task.  This is because the rake task will setup and teardown the
      secondary database.
  * spec/vcr_cassettes
    * Cassettes for recorded tests using [VCR](https://github.com/vcr/vcr).
