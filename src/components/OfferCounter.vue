<template>
    <h1>{{ counter.toLocaleString() }}</h1>
</template>

<script>
    export default{
        data(){
            return {
                counter: Math.floor(Math.random() * (100000 - 80000 + 1)) + 80000
            }
        }
    }

</script>

<style>
    h1{
        font-weight: 900;
        font-size: 60px;
        color: #6244DB;
    }
</style>