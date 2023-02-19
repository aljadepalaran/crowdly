<div align="center">

# crowdly
social media application utilising new features in the world of ruby on rails
[Getting started](#getting-started) | [Installation](#installation) | [Contribution](#contribution)
</div>
## Getting started
Ruby Version: 3.0.0
Rails Version: 7.0.4.x
Database: PostgreSQL

To start the application, run `rails server` in the root directory.

## Installation
Before you run the application, you need to run the following commands:
`bundle install` to install the necessary gems for the project
`rails db:create` to create the database
`rails db:migrate` to run the migrations on the database
`rails db:seed` to seed the database

## Contribution
To contribute, branch out from the develope branch using `git checkout -b branch-name`

For the branch naming convention, use a two part system (`feature/feature-name`).

The first part should be the type of work done (feature/bug/maintenance).

Use the maintenance type to cover work outside of bugs and features such as dependencies or tech debt.

Once done with the work, push to remote and then create a PR to the develop branch.

Use `Squash and merge` to merge into develop.
