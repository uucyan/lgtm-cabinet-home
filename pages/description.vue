<template lang="pug">
el-container.main
  el-container
    el-aside(v-if="width830OrMore" width="30px")
    el-aside.wood-grain-white.z-index-1(v-if="width830OrMore" width="100px" style='padding: 20px 20px 0px 20px; filter: drop-shadow(10px 10px 50px rgba(0,0,0,0.5));')
    el-main.wood-grain-white.z-index-0
    el-aside.wood-grain-white.z-index-1(v-if="width830OrMore" width="100px" style='padding: 20px 20px 0px 20px; filter: drop-shadow(-10px 10px 50px rgba(0,0,0,0.5));')
    el-aside(v-if="width830OrMore" width="30px")
  el-footer.wood-grain-dark-brown.z-index-1(height='80px' style='padding: 20px 20px 0px 20px; filter: drop-shadow(10px -10px 20px rgba(0,0,0,0.7));')
    nuxt-link(to="/")
      el-button(round icon='el-icon-arrow-up' style='background: transparent; color: #ffffff;') 閉める
</template>

<script lang="coffee">
import HandleResizeMixin from "~/components/HandleResizeMixin.coffee"

export default
  name: 'description'
  mixins: [ HandleResizeMixin ]
  transition:
    name: 'draw'
    enterActiveClass: 'animated fadeInDownBig'
    leaveActiveClass: 'animated fadeOutUpBig'
</script>

<style lang="sass" scoped>
</style>
