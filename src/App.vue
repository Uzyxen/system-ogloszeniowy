<template>
  <TopBar/>
  <main>
    <RouterView></RouterView>
  </main>
</template>

<script>
  import TopBar from  './components/TopBar.vue';

  export default {
    components: {
      TopBar
    }
  }
</script>

<style>

</style>
