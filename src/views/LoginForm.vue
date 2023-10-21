<template>
    <div id="login-box">
        <SuccessModal v-if="success">
            <p>Pomyślnie zalogowano</p>
        </SuccessModal>

        <h2>Zaloguj się</h2>

        <form @submit.prevent="Login" method="post">
            <div>
                <label for="login">Login:</label>
                <input type="text" name="login" v-model="data.login" @keyup="checkLogin">
                <span class="error">{{ loginErr }}</span>
            </div>

            <div>
                <label for="login">Hasło:</label>
                <input type="password" name="password" id="" v-model="data.password">
                <span class="error">{{ passwordErr }}</span>
            </div>
            <button type="submit">Zaloguj się</button>
        </form>
    </div>
</template>

<script>
    import { useUserStore } from '../store/store';
    import SuccessModal from '../components/SuccessModal.vue';

    export default {
        data(){
            return{
                data: {
                    login: '',
                    password: ''
                },
                loginErr: '',
                passwordErr: '',
                success: false
            }
        },
        methods:{
            Login() {
                const userStore = useUserStore();

                if(this.data.login === '') this.loginErr = 'Uzupełnij pole!';
                else this.loginErr = '';

                if(this.data.password === '') this.passwordErr = 'Uzupełnij pole!';
                else this.passwordErr = '';
                    
                if(this.data.login !== '' && this.data.password !== ''){
                    userStore.logInUser('http://localhost/system-ogloszeniowy/src/api/singIn.php', this.data).then(() => {
                        if(userStore.logged){
                            this.success = userStore.logged;
                        }
                    })
                }
            }
        },
        components: {
            SuccessModal
        }
    }

</script>

<style>
    .error{
        font-size: 14px;
        color: #FA4132;
    }

    #login-box{
        padding: 50px 150px 0;
        width: 400px;
    }

    #login-box h2{
        text-align: center;
        margin: 0 0 20px;
    }

    #login-box form div{
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    #login-box form div:nth-child(1){
        margin-bottom: 15px;
    }

    #login-box form div label{
        font-size: 20px;
    }

    #login-box form div input{
        padding: 15px;
        height: 45px;
        box-sizing: border-box;
    }

    #login-box button{
        margin-top: 30px;
        width: 400px;
        background-color: #6244DB;
        color: #fff;
        padding: 15px;
        font-size: 18px;
        cursor: pointer;
    }
</style>