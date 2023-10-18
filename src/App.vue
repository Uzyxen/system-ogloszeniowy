<template>
  <TopBar/>
  <main>
    <RouterView></RouterView>
  </main>
</template>

<script>
  import TopBar from  './components/TopBar.vue';
  import { useMainStore } from './store/store';
  import { sendData } from './api';

  export default {
    async mounted(){
      const store = useMainStore();
      const data = await sendData('http://localhost/system-ogloszeniowy/src/api/getName.php');

      store.logged = data.logged;
      store.first_name = data.first_name;
      store.last_name = data.last_name;
    },
    components: {
      TopBar
    }
  }
</script>

<style>

</style>
