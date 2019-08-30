<template>
  <router-view />
</template>

<script>
export default {
  computed: {
    key() {
      return this.$route.path
    }
  }
}
</script>
