<template lang="pug">
el-container.main
  el-main.z-index-0
    .margin-bottom-30px
    div.display-table.logo-area
      div.logo.display-inline-block
      div.title.display-inline-block
        p LGTM
        p Cabinet
    div.cabinet
      .cube.wood-grain-dark-brown
        nuxt-link(to="/description")
          el-button.wood-grain-dark-brown(
            icon='el-icon-info'
            class="button"
            round
          ) はじめに
        .right-side.wood-grain-dark-brown
        .top-side.wood-grain-dark-brown
      .cube.wood-grain-dark-brown
        el-button.wood-grain-dark-brown(
          icon='el-icon-document'
          class="button"
          round
        ) リリース
      .cube.wood-grain-dark-brown
        a(href="https://github.com/uucyan/lgtm-cabinet" target="_blank")
          el-button.wood-grain-dark-brown(
            class="button"
            round
          )
            div.github-icon
            span.github-text GitHub

</template>

<script lang="coffee">
export default
  name: 'Index'

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

.cube
  padding: 20px
  box-sizing: border-box
  margin-right: auto
  margin-left: auto
  display: flex
  justify-content: center
  align-items: center
  text-align: center
  flex-direction: column
  border-bottom: solid 1px $color-dark-brown
  width: 70%
  height: 200px
  position: relative
  @media screen and (max-width: 593px)
    width: 60%

.top-side
  box-sizing: border-box
  position: absolute
  top: -100px
  left: 100px
  height: 100px
  width: 100%
  transform-origin: 0 0
  transform: skewX(-45deg)
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
  @media screen and (max-width: 593px)
    right: -70px
    width: 70px
</style>
