import SimpleSchema from "simpl-schema"

satzteilSchema = new SimpleSchema
  text:
    type: String

export default Satzteile =
  subjekte: null
  prädikate: null
  objekte: null

for key, value of Satzteile
  Satzteile[key] = new Mongo.Collection key
  Satzteile[key].schema = satzteilSchema
  Satzteile[key].attachSchema Satzteile[key].schema
