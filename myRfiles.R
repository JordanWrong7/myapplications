library(mongolite)

urlm = "mongodb://jordan:soccer95@jordandb-shard-00-00-ykcna.mongodb.net:27017,jordandb-shard-00-01-ykcna.mongodb.net:27017,jordandb-shard-00-02-ykcna.mongodb.net:27017/test?ssl=true&replicaSet=JordanDB-shard-0&authSource=admin&retryWrites=false"
pos = mongo(collection = "positions", db = "test", url = urlm)
pos$remove("{}")

data = data.frame(x = rnorm(5), y = rep(Sys.time(),5))

pos$insert(data)
print("thanks")