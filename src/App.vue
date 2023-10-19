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

      userStore.getUserData('http://localhost/system-ogloszeniowy/src/api/getUserData.php');
    },
    components: {
      TopBar
    }
  }
</script>

<style>

</style>
