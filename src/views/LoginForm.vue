<template>
    <div id="form">
        <form @submit.prevent="Login" method="post">
            Login: <input type="text" name="login" v-model="data.login">
            Hasło: <input type="password" name="password" id="" v-model="data.password">
            <button type="submit">Zaloguj się</button>
        </form>

        {{ response }}
    </div>
</template>

<script>
    import { sendData } from '../api';

    export default {
        data(){
            return{
                data: {
                    login: '',
                    password: ''
                },
                response: ''
            }
        },
        methods:{
            async Login(){
                try {
                    this.response = await sendData(this.data);

                    console.log('Odpowiedź:', this.response);
                } catch (error) {
                    console.error('Błąd podczas wysyłania danych:', error);
                }
            }
        }
    }

</script>

<style>
    
</style>