<template>
  <TopBar/>
  <main>
    <SuccessModal/>
    <RouterView></RouterView>
  </main>
</template>

<script>
  import TopBar from  './components/TopBar.vue';
  import { useUserStore } from './store/store';
  import SuccessModal from './components/SuccessModal.vue';

  export default {
    setup(){
      const userStore = useUserStore();

      userStore.getUserData('http://localhost/system-ogloszeniowy/src/api/getUserData.php');
    },
    components: {
      TopBar,
      SuccessModal
    }
  }
</script>

<style>

</style>
