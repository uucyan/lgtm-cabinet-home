<template lang="pug">
el-container.main
  el-main.z-index-0
    .margin-bottom-30px
    .display-table.logo-area
      .logo.display-inline-block(v-if="documentWidth593OrMore")
      .title.display-inline-block
        p LGTM
        p Cabinet
    .cabinet
      nuxt-link(to="/description")
        .cube.wood-grain-dark-brown
          .dent.wood-grain-dark-brown
      nuxt-link(to="/description")
        .cube.wood-grain-dark-brown
          .dent.wood-grain-dark-brown
      a(href="https://github.com/uucyan/lgtm-cabinet" target="_blank")
        .cube.wood-grain-dark-brown
          .dent.wood-grain-dark-brown
      .right-side.wood-grain-dark-brown
      .top-side.wood-grain-dark-brown

</template>

<script lang="coffee">
import HandleResizeMixin from "~/components/HandleResizeMixin.coffee"

export default
  name: 'Index'
  mixins: [ HandleResizeMixin ]
  transition:
    name: 'zoom'
    enterActiveClass: 'animated bounceIn'
    leaveActiveClass: 'animated zoomOut'
</script>

<style lang="sass" scoped>
.main
  height: 100vh
  overflow-y: auto

.logo-area
  text-align: center
  margin-right: auto
  margin-left: auto
  margin-bottom: 20px

.display-inline-block
  display: inline-block
  text-align: left
  vertical-align: middle
  @media screen and (max-width: 593px)
    text-align: center

.title
  font-family: 'Fredoka One', sans-serif
  font-size: 80px
  color: $color-white
  filter: drop-shadow(10px 10px 10px rgba(0,0,0,0.5))

.button
  color: #fff
  font-size: 20px
  width: 150px
  height: 45px

.github-text
  display: inline
  margin-left: 5px

.margin-left-10
  margin-left: 10%

.margin-left-20
  margin-left: 20%

.cabinet
  position: relative
  z-index: -1
  filter: drop-shadow(10px -3px 8px rgba(0,0,0,0.5))
  width: 70%
  margin-right: auto
  margin-left: auto
  @media screen and (max-width: 593px)
    width: 60%

.cube
  padding: 20px
  box-sizing: border-box
  display: flex
  justify-content: center
  align-items: center
  text-align: center
  flex-direction: column
  border-top: solid 1px $color-dark-brown
  border-bottom: solid 1px $color-dark-brown
  width: 100%
  height: 200px
  border-radius: 10px 10px 10px 10px

.cube:hover
  filter: drop-shadow(10px 0px 10px rgba(0,0,0,0.5))

.top-side
  box-sizing: border-box
  position: absolute
  top: -100px
  left: 100px
  height: 100px
  width: 100%
  transform-origin: 0 0
  transform: skewX(-45deg)
  border-radius: 6px 2px 1px 6px
  @media screen and (max-width: 593px)
    top: -70px
    left: 70px
    height: 70px

.right-side
  box-sizing: border-box
  position: absolute
  top: 0px
  right: -100px
  height: 600px
  width: 100px
  transform-origin: 0 0
  transform: skewY(-45deg)
  border-radius: 1px 2px 6px 6px
  @media screen and (max-width: 593px)
    right: -70px
    width: 70px

.dent
  width: 120px
  height: 40px
  box-shadow: 0 0 0 2px rgba(0, 0, 0, 0.08), 0px 4px 10px -6px #000000 inset
  border-radius: 6px 6px 6px 6px
  @media screen and (max-width: 593px)
    width: 100px
    height: 20px
</style>
