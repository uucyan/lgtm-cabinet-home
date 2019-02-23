<template lang="pug">
el-container.main
  el-main.wood-grain-white.z-index-0
  el-footer.wood-grain-dark-brown.z-index-1(height='80px' style='padding: 20px 20px 0px 20px; filter: drop-shadow(10px -10px 10px rgba(0,0,0,0.5));')
    nuxt-link(to="/")
      el-button(round icon='el-icon-back' style='background: transparent; color: #ffffff;') 戻る
</template>

<script lang="coffee">
export default
  name: 'description'

  transition:
    name: 'draw'
    enterActiveClass: 'animated fadeInDownBig'
    leaveActiveClass: 'animated fadeOutUpBig'
</script>

<style lang="sass" scoped>
</style>
