db.mycollection.find().count()
db.mycollection.find({transaction_price: { \$gt: 970}}).forEach( printjson )
