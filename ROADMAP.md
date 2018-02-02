# Xaos Cloud Road Map and Estimates

## Stage 1

Using the existing Node.js app as a guide:

* Create Phoenix-based API umbrella app.
* Create Postgres-based DB models, migrations, test suite.
* Replicate current registration and login functionality.
* Set up deployment process for Hosting (e.g. AWS, Heroku, Digital Ocean...).
* HTTPS certificate registration, configuration, DNS setup, etc.
* Document API using Swagger, integrate with Phoenix app.
* Create integration test suite, mock client/server, etc.
* Forgot my password, email confirmation, etc.

## Stage 2

* Generic user data storage (Postgres JSONB, etc)
* Data models for multiple game authorizations per user + generic game data store.
* Game event journaling.
* Prototype scaling horizontally.
* Performance testing.

## Stage 3

* Integrate using OAuth-like multiple authentication services
  * Infrastructure setup.
  * Decide on 1 first service to integrate with (e.g. Google, Facebook, Steam?)
* Prototype headless game server management by OTP genserver/actor/agent.
* Prototype OTP <=> headless data transfer
  * native calls?
  * TCP/UDP sockets?
  * Outgoing HTTP as a last resort? Or even Websockets?
