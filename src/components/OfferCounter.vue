<template>
    <h1>{{ counter.toLocaleString() }}</h1>
</template>

<script>
    export default{
        data(){
            return {
                counter: 0,
                target: 92673
            }
        },
        mounted(){
            setInterval(() => {
                if(this.counter < this.target){
                    this.counter += 952;

                    if(this.counter > this.target)
                        this.counter = this.target;
                }
            }, 1);
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