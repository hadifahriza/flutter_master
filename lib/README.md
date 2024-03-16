# Explanation

## app directory
Define main app such as top level widget, list of routes that will be used in the app, and list of provider that will be used.

## core
Define code to help development phase such as classes, constants, extensions, hive, interceptor, styles, services or utils.

## data
Define data layer to be a gateway for data communication. either to remote or local.

## domain
Define domain layer with business rule, independent layer that contain usecase, entity, and repository.

## presentation
Define presentation layer that will be used by the user. presentation directory will contain all pages in app.

**injection.dart**
Define a service locator which make code cleaner and less dependencies.

**main.dart**
Root of the application.