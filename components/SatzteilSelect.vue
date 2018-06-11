<template lang="pug">
div
  select(v-model="selected" :multiple="multiple")
    option(disabled value="") Wähle ein {{collectionName}}
    option(v-for="satzteil in satzteile") {{satzteil.text}}
</template>

<script lang="coffee">
import SatzteilMixin from "./SatzteilMixin.vue"
import Satzteile from "/api/collections.coffee"
export default
  mixins: [SatzteilMixin]
  props:
    multiple:
      type: Boolean
      default: false
    value:
      type: [String, Array]
      required: true
  data: ->
    selected: @value
  watch:
    selected: ->
      @$emit "update:value", @selected
</script>

<style lang="sass">

</style>
