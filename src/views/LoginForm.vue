<template>
    <div id="root">
        <div id="login-box">
            <h2>Zaloguj się</h2>

            <form @submit.prevent="Login" method="post">
                <div>
                    <label for="login">Login:</label>
                    <input type="text" name="login" v-model="data.login">
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
    </div>
</template>

<script>
    import { useUserStore, usePopupStore } from '../store/store';

    export default {
        setup() {
            const popupStore = usePopupStore();

            return { popupStore }
        },
        data(){
            return{
                data: {
                    login: '',
                    password: ''
                },
                loginErr: '',
                passwordErr: ''
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
                            this.popupStore.successModalVisible = userStore.logged;
                            this.popupStore.successModalMessage = "Pomyślnie zalogowano";

                            this.$router.push({ name: 'profil' });
                        } else{
                            this.popupStore.failureModalVisible = true;
                            this.popupStore.failureModalMessage = "Nie znaleziono użytkownika";
                        }
                    })
                }
            }
        }
    }

</script>

<style scoped>
    .error{
        font-size: 14px;
        color: #FA4132;
    }

    #root{
        background-color: #FFF;
        width: 100%;
        height: 100vh;
    }

    #login-box{
        padding: 50px 150px 0;
        width: 400px;
        height: 500px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.15);
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