<template>
    <h1>{{ counter.toLocaleString() }}</h1>
</template>

<script>
    export default{
        data(){
            return {
                counter: 92518
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