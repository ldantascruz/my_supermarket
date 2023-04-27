const functions = require("firebase-functions");
const admin = require("firebase-admin");
const request = require("graphql-request");

const client = new request.GraphQLClient('https://simple-burro-89.hasura.app/v1/graphql', {
    headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": "VI2qxHAISq5jPvdFgCBAAeQTb8Hk4HrkR7krR1gxfwfvgrm0IXPmIyKZJM8Rfrji" 
    }
})
admin.initializeApp(functions.config().firebase);


