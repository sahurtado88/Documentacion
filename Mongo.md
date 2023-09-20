# Mongo DB

## Concepts

- Database
- Colection like table in SQL
- Document liker record or register in SQL
- Field like a colum in SQL


## Inserting Documents in a Mongo DB

- insertOne()

        db.<collection>.insertOne()

if you use insertOne and the collection doesnt exist mongodb will create it

```
db.grades.insertOne({
  student_id: 654321,
  products: [
    {
      type: "exam",
      score: 90,
    },
    {
      type: "homework",
      score: 59,
    },
    {
      type: "quiz",
      score: 75,
    },
    {
      type: "homework",
      score: 88,
    },
  ],
  class_id: 550,
})
```

- inserMany()

        db.<collection>.insertMany([<document1>,<document2>,<document3>])

every document in a collection must have _id field that was unique if you don't provided mongodb will autogenereated one

```
db.grades.insertMany([
  {
    student_id: 546789,
    products: [
      {
        type: "quiz",
        score: 50,
      },
      {
        type: "homework",
        score: 70,
      },
      {
        type: "quiz",
        score: 66,
      },
      {
        type: "exam",
        score: 70,
      },
    ],
    class_id: 551,
  },
  {
    student_id: 777777,
    products: [
      {
        type: "exam",
        score: 83,
      },
      {
        type: "quiz",
        score: 59,
      },
      {
        type: "quiz",
        score: 72,
      },
      {
        type: "quiz",
        score: 67,
      },
    ],
    class_id: 550,
  },
  {
    student_id: 223344,
    products: [
      {
        type: "exam",
        score: 45,
      },
      {
        type: "homework",
        score: 39,
      },
      {
        type: "quiz",
        score: 40,
      },
      {
        type: "homework",
        score: 88,
      },
    ],
    class_id: 551,
  },
])
```

## Finding documents in mongo collection

        db.<collection>.find()

        { field: { $eq: <value>}}
        {field: <value>}
        Sin operator allows us to select all documents that have a field value equal to any of the values specified in the array
        db.<collection>.find({<field>: {$in:[<value>,<value>, ...]}})

Finding Documents in a MongoDB Collection
Review the following code, which demonstrates how to query documents in MongoDB.

Find a Document with Equality
When given equality with an _id field, the find() command will return the specified document that matches the _id. Here's an example:

    db.zips.find({ _id: ObjectId("5c8eccc1caa187d17ca6ed16") })

Find a Document by Using the $in Operator
Use the $in operator to select documents where the value of a field equals any value in the specified array. Here's an example:

    db.zips.find({ city: { $in: ["PHOENIX", "CHICAGO"] } })

## Finding documents by using comparasion Operators

Review the following comparison operators: $gt, $lt, $lte, and $gte.

- $gt

Use the $gt operator to match documents with a field greater than the given value. For example:

    db.sales.find({ "items.price": { $gt: 50}})
- $lt

Use the $lt operator to match documents with a field less than the given value. For example:

    db.sales.find({ "items.price": { $lt: 50}})
- $lte

Use the $lte operator to match documents with a field less than or equal to the given value. For example:

    db.sales.find({ "customer.age": { $lte: 65}})
- $gte

Use the $gte operator to match documents with a field greater than or equal to the given value. For example:

    db.sales.find({ "customer.age": { $gte: 65}})

## Quering on Array elemnts in Mongodb

- Find Documents with an Array That Contains a Specified Value

In the following example, "InvestmentFund" is not enclosed in square brackets, so MongoDB returns all documents within the products array that contain the specified value.

    db.accounts.find({ products: "InvestmentFund"})
- Find a Document by Using the $elemMatch Operator

Use the $elemMatch operator to find all documents that contain the specified subdocument. For example:

        db.sales.find({
        items: {
            $elemMatch: { name: "laptop", price: { $gt: 800 }, quantity: { $gte: 1 } },
        },
        })

## Finding documents by using logical operator

Review the following logical operators: implicit $and, $or, and $and.

- Find a Document by Using Implicit $and

Use implicit $and to select documents that match multiple expressions. For example:

    db.routes.find({ "airline.name": "Southwest Airlines", stops: { $gte: 1 } })
- Find a Document by Using the $or Operator

Use the $or operator to select documents that match at least one of the included expressions. For example:

    db.routes.find({
    $or: [{ dst_airport: "SEA" }, { src_airport: "SEA" }],
    })
- Find a Document by Using the $and Operator

Use the $and operator to use multiple $or expressions in your query.

    db.routes.find({
    $and: [
        { $or: [{ dst_airport: "SEA" }, { src_airport: "SEA" }] },
        { $or: [{ "airline.name": "American Airlines" }, { airplane: 320 }] },
    ]
    })

## Replacing a document in Mongo DB

To replace documents in MongoDB, we use the replaceOne() method. The replaceOne() method takes the following parameters:

- filter: A query that matches the document to replace.
- replacement: The new document to replace the old one with.
- options: An object that specifies options for the update.

We use the _id field to filter the document. In our replacement document, we provide the entire document that should be inserted in its place. Here's the example code:

    db.books.replaceOne(
      {
        _id: ObjectId("6282afeb441a74a98dbbec4e"),
      },
      {
        title: "Data Science Fundamentals for Python and MongoDB",
        isbn: "1484235967",
        publishedDate: new Date("2018-5-10"),
        thumbnailUrl:
          "https://m.media-amazon.com/images/I/71opmUBc2wL._AC_UY218_.jpg",
        authors: ["David Paper"],
        categories: ["Data Science"],
      }
    )

## Updating MongoDB Documents by using updateOne()

