# Twitter Clone

## Why do testing?

1. Monetary reasons
2. Working on legacy code
3. Documentation

## Different types of tests

1. Unit tests => testing small parts of your application, model tests
2. Integration tests => just testing 1 controller action to see if it is functioning correctly
3. End to end tests => like a real user interacting with your site, logging in, filling out a form, submitting the form, se if your on the right page and it has the right content on it, test models, controllers and views all at once

## 3 things you'll need in a test environment

1. Assertion library `expect` in rspec
2. Test runner `rspec`
3. Code coverage