<template>
  <TopBar v-if="globalStore.topbarVisible"/>
  <main>
    <SuccessModal/>
    <FailureModal/>
    <RouterView></RouterView>
  </main>
</template>

<script>
  import TopBar from  './components/TopBar.vue';
  import { useUserStore, userGlobalStore } from './store/store';
  import SuccessModal from './components/SuccessModal.vue';
  import FailureModal from './components/FailureModal.vue';

  export default {
    setup(){
      const userStore = useUserStore();
      const globalStore = userGlobalStore();

      userStore.getUserData('http://localhost/system-ogloszeniowy/src/api/getUserData.php');


      return { globalStore }
    },
    components: {
      TopBar,
      SuccessModal,
      FailureModal
    }
  }
</script>

<style>

</style>
