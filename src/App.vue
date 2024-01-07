<template>
  <TopBar v-if="shouldShowTopbar"/>
  <main>
    <SuccessModal/>
    <FailureModal/>
    <RouterView></RouterView>
  </main>
</template>

<script>
  import TopBar from  './components/TopBar.vue';
  import { useUserStore } from './store/store';
  import SuccessModal from './components/SuccessModal.vue';
  import FailureModal from './components/FailureModal.vue';

  export default {
    setup(){
      const userStore = useUserStore();

      userStore.getUserData('http://localhost/system-ogloszeniowy/src/api/getUserData.php');
    },
    computed:{
      shouldShowTopbar(){
        return this.$route.meta.showTopBar;
      }
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
