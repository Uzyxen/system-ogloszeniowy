<template>
  <TopBar/>
  <main>
    <HomePage/>
    <SearchForOffersPage/>
  </main>
</template>

<script>
  import TopBar from  './components/TopBar.vue';
  import HomePage from './components/HomePage.vue';
  import SearchForOffersPage from './components/SearchForOffersPage.vue';

  export default {
    components: {
      TopBar,
      HomePage,
      SearchForOffersPage
    }
  }
</script>

<style>

</style>
