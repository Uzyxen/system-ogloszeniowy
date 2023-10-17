<template>
    <div id="form">
        <form @submit.prevent="Login">
            Login: <input type="text" v-model="data.login">
            Hasło: <input type="password" name="" id="" v-model="data.password">
            <button type="submit">Zaloguj się</button>
        </form>
    </div>
</template>

<script>

    export default {
        data(){
            return{
                data: {
                    login: '', 
                    password: ''
                }
            }
        },
        methods:{
            Login(){

            }
        }
    }

</script>

<style>
    
</style>