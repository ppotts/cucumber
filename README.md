# cucumber

This is the simplest possible build script setup for Cucumber using Java.
There is nothing fancy like a webapp or browser testing. All this does is to show you how
to install and run Cucumber!

There is a single feature file with one scenario. The scenario has three steps, two of them pending. See if you can make them all pass!

## Get the code

Git:

    git clone https://github.com/ppotts/cucumber.git
    cd cucumber

Subversion:

    svn checkout https://github.com/ppotts/cucumber/trunk cucumber-java-skeleton
    cd cucumber

## Use Gradle

Open a command window and run:

    gradlew test

This runs Cucumber features using Cucumber's JUnit runner. The `@RunWith(Cucumber.class)` annotation on the `RunCukesTest`
class tells JUnit to kick off Cucumber.
