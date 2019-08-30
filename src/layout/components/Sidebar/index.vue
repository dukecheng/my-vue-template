<template>
  <div :class="{'has-logo':showLogo}">
    <logo v-if="showLogo" :collapse="isCollapse" />
  </div>
</template>
<script>
import Logo from './Logo'
export default {
  components: { Logo }, computed: {
    showLogo() {
      return this.$store.state.settings.sidebarLogo
    }
  }
}
</script>
