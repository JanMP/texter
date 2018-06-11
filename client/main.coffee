import { Vue } from "meteor/akryum:vue"
import "./main.html"
import App from "/components/App.vue"


Meteor.startup ->
  new Vue
    el: '#app'
    render: (h) -> h(App)
