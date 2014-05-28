
doctype

html
  head
    title Ripples
    meta (:charset utf-8)
    link (:rel stylesheet) (:href css/style.css)
    script (:src bower_components/vue/dist/vue.js)
    script (:defer) (:src build/main.js)
  body#app
    .row (:v-repeat row:grid)
      .box (:v-repeat box:row)
        :style "-webkit-animation-duration: {{box}}ms"