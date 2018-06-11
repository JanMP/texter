<script lang="coffee">
import Satzteile from "/api/collections.coffee"
export default
  props:
    collectionName:
      type: String
      required: true
  meteor:
    satzteile: -> Satzteile[@collectionName].find()
</script>
