# npl-shire Rails backend

## Installation

    bin/setup

## Run

    bin/run

## Test

For the automated test suite run:

    bin/check

You can manually test the app under http://localhost:3000/graphiql

### Login

```graphql
mutation {
  signInUser(email: {
    email: "sadi@noproblan.ch", 
    password: "12345678"}) {
    token
  }
}
```

Copyright 2018, LAN-Verein Berg under the MIT license

