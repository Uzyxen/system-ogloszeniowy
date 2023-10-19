<template>
  <TopBar/>
  <main>
    <RouterView></RouterView>
  </main>
</template>

<script>
  import TopBar from  './components/TopBar.vue';
  import { useUserStore } from './store/store';

  export default {
    setup(){
      const userStore = useUserStore();

      return { userStore }
    },
    components: {
      TopBar
    }
  }
</script>

<style>

</style>
