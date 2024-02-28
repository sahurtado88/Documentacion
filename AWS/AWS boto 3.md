## Difference between Client, Paginators, Waiters and Resources
When browsing along the S3 services, you might notice that there are different ways to achieve your goals

**Client**:<br />
A client in Boto3 represents the connection to a specific AWS service. It provides low-level access to the API operations offered by that service. When you create a Boto3 client for a specific AWS service, you can use it to make direct API requests and manage resources associated with that service. Clients are typically used when you need fine-grained control over the API calls and their parameters.

**Paginators**:(https://boto3.amazonaws.com/v1/documentation/api/latest/guide/paginators.html)<br />
AWS service APIs often return large amounts of data that can be paginated for easier handling. Paginators in Boto3 are helpers that allow you to iterate over paginated API responses seamlessly. They automatically make subsequent API calls to retrieve additional pages of data as needed, abstracting away the complexity of dealing with pagination manually. Paginators are useful when you're dealing with API operations that return a large number of results.

**Waiters**:(https://boto3.amazonaws.com/v1/documentation/api/latest/guide/clients.html#waiters)<br />
Waiters in Boto3 are used to wait for a certain condition or state to be met in an AWS resource before proceeding with further actions. They help you poll an AWS service API until a specific state is reached. For example, you might use a waiter to wait for a specific Amazon EC2 instance to reach the "running" state after launching it. Waiters are especially helpful in situations where you need to ensure that an operation has completed before moving on.

**Resources**:(https://boto3.amazonaws.com/v1/documentation/api/latest/guide/resources.html)<br />
Resources in Boto3 provide a higher-level, more Pythonic interface to interact with AWS services. They abstract away the details of the API calls and provide a more object-oriented way of working with AWS resources. Resources represent AWS entities like instances, S3 buckets, DynamoDB tables, etc. When you work with resources, you can use methods and attributes that make it easier to manage and manipulate these entities without directly dealing with the underlying API calls.

Summary:
1) Client: Low-level API interaction with an AWS service.
2) Paginators: Handle paginated results from AWS service APIs.
3) Waiters: Wait for specific conditions to be met in AWS resources.
4) Resources: High-level, object-oriented interface to interact with AWS resources.
