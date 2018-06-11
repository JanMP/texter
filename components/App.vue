<template lang="pug">
div
  SatzteilSelect(collectionName="subjekte" :value.sync="subjekt")
  SatzteilSelect(collectionName="prädikate" :value.sync="prädikat")
  SatzteilSelect(collectionName="objekte" :multiple="true" :value.sync="objekt")
  h1 {{text}}
  button(@click="toggleEditors") Toggle Editors
  div(v-if="showEditors")
    EditSatzteile(collectionName="subjekte")
    EditSatzteile(collectionName="prädikate")
    EditSatzteile(collectionName="objekte")
</template>

<script lang="coffee">
import EditSatzteile from "./EditSatzteile.vue"
import SatzteilSelect from "./SatzteilSelect.vue"
export default
  data: ->
    showEditors: false
    subjekt: ""
    prädikat: ""
    objekt: []
  computed:
    text: ->
      [first..., last] = @objekt
      objectString = if first.length > 0
        [[first...].join(', '), last].join ' und '
      else
        last
      "#{@subjekt} #{@prädikat} #{objectString}."
  methods:
    toggleEditors: -> @showEditors = not @showEditors
  components: {EditSatzteile, SatzteilSelect}
</script>
