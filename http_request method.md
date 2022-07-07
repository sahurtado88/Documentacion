# HTTP Request Methods

##  What is HTTP?
HTTP is a protocol, or a definite set of rules, for accessing resources on the web. Resources could mean anything from HTML files to data from a database, photos, text, and so on.

These resources are made available to us via an API and we make requests to these APIs via the HTTP protocol. API stands for application programming interface. It is the mechanism that allows developers to request resources.

## The Anatomy of an HTTP Request
An HTTP request must have the following:

- An HTTP method (like GET)
- A host URL (like https://api.spotify.com/)
- An endpoint path(like  v1/artists/{id}/related-artists)

A request can also optionally have:

- Body
- Headers
- Query strings
- HTTP version

## The Anatomy of an HTTP Response
A response must have the following:

- Protocol version (like HTTP/1.1)
- Status code (like  200)
- Status text (OK)
- Headers
A response may also optionally have:

- Body

## HTTP Methods 

### HTTP POST request
We use POST to create a new resource. A POST request requires a body in which you define the data of the entity to be created.

A successful POST request would be a 200 response code. In our weather app, we could use a POST method to add weather data about a new city.

### HTTP GET request
We use GET to read or retrieve a resource. A successful GET returns a response containing the information you requested.

In our weather app, we could use a GET to retrieve the current weather for a specific city.

### HTTP PUT request
We use PUT to modify a resource. PUT updates the entire resource with data that is passed in the body payload. If there is no resource that matches the request, it will create a new resource.

In our weather app, we could use PUT to update all weather data about a specific city.

### HTTP PATCH request
We use PATCH to modify a part of a resource. With PATCH, you only need to pass in the data that you want to update.

In our weather app, we could use PATCH to update the rainfall for a specified day in a specified city.

### HTTP DELETE request
We use DELETE to delete a resource. In our weather app, we could use DELETE to delete a city we no longer wanted to track for some reason.

## difference between PUT and POST

PUT requests are idempotent, meaning that executing the same PUT request will always produce the same result.

On the other hand, a POST will produce different outcomes. If you execute a POST request multiple times, you'll create a new resource multiple times despite them having the same data being passed in.

##  difference between PUT and PATCH

The key differences are that PUT will create a new resource if it cannot find the specified resource. And with PUT you need to pass in data to update the entire resource, even if you only want to modify one field.

With PATCH, you can update part of a resource by simply passing in the data of the field to be updated.

