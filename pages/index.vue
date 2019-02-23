<template lang="pug">
section.container
  div
    logo
    h1.title lgtm-cabinet-home
    h2.subtitle LGTM Cabinet のホームページ
    .links
      a.button--green(href='https://nuxtjs.org/', target='_blank') Documentation
      a.button--grey(href='https://github.com/nuxt/nuxt.js', target='_blank') GitHub

</template>

<script lang="coffee">
import Logo from '~/components/Logo.vue'

export default
  name: 'Index'
  components:
    'logo': Logo
</script>

<style lang="sass" scoped>
.container
  margin: 0 auto
  min-height: 100vh
  display: flex
  justify-content: center
  align-items: center
  text-align: center

.title
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif
  display: block
  font-weight: 300
  font-size: 100px
  color: $color-dark-brown
  letter-spacing: 1px

.subtitle
  font-weight: 300
  font-size: 42px
  color: #526488
  word-spacing: 5px
  padding-bottom: 15px

.links
  padding-top: 15px
</style>
