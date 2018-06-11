<template lang="pug">
div
  h1 {{collectionName}}
  input(v-model="inputString")
  button(@click="add") +
  .listItem(v-for="satzteil in satzteile")
    span {{satzteil.text}}
    button(@click="remove(satzteil._id)") delete
</template>

<script lang="coffee">
import SatzteilMixin from "./SatzteilMixin.vue"
import Satzteile from "/api/collections.coffee"
export default
  mixins: [SatzteilMixin]
  data: ->
    inputString: ""
  methods:
    add: ->
      Satzteile[@collectionName].insert text: @inputString
      @inputString = ""
    remove: (id) ->
      Satzteile.subjekte.remove id
</script>

<style lang="sass">

</style>
