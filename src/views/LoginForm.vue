<template>
    <div id="login-box">
        <div v-if="success == ''">
            <h2>Podaj adres email</h2>
            <p>aby się zalogować lub utworzyć konto</p>

            <form @submit.prevent="CheckEmail" method="post"> 
                <div>
                    <label for="email">Email:</label>
                    <input placeholder="Adres e-mail" type="text" name="email" v-model="email">
                    <span class="error">{{ emailErr }}</span>
                </div>
                <button type="submit">Dalej</button>
            </form>

            <h3>Lub</h3>

            <button type="submit" id="google-button">Zaloguj się przez Google</button>
            <button type="submit" id="facebook-button">Zaloguj się przez Facebook</button>

            <p id="for-companies">Logowanie dla firm</p>
        </div>

        <div v-if="success == 'true'">
            <h2>Podaj hasło</h2>
            <p>aby zalogować się do portalu</p>

            <form @submit.prevent="Login" method="post"> 
                <div>
                    <label for="password">Hasło:</label>
                    <input placeholder="Hasło" type="password" name="email" v-model="password">
                    <span class="error">{{ passwordErr }}</span>
                </div>
                <button type="submit">Dalej</button>
            </form>
        </div>
    </div>
</template>

<script>
    import { sendData } from '../api';
    import { usePopupStore, useUserStore } from '../store/store';

    export default {
        setup() {
            const popupStore = usePopupStore();

            return { popupStore }
        },
        data(){
            return{
                email: '',
                password: '',
                emailErr: '',
                success: ''
            }
        },
        methods:{
            async CheckEmail() {
                if(this.email === '') {
                    this.emailErr = 'Uzupełnij pole!';
                } 
                else {
                    this.emailErr = '';

                    try{
                        const response = await sendData('http://localhost/system-ogloszeniowy/src/api/checkIfEmailExists.php', this.email);

                        if(response){
                            this.success = response;

                            if(this.success === 'false'){
                                this.$router.push({ name: 'rejestracja' });
                            }
                        }
                    }catch(error){
                        console.error("Wystąpił nieoczekiwany błąd");
                    }
                } 
            },
            async Login() {
                if(this.password === ''){
                    this.passwordErr = 'Uzupełnij pole!';
                }
                else {
                    this.passwordErr = '';

                    const userStore = useUserStore();

                    userStore.logInUser('http://localhost/system-ogloszeniowy/src/api/singIn.php', { email: this.email, password: this.password }).then(() => {
                        if(userStore.logged){
                            this.popupStore.successModalVisible = userStore.logged;
                            this.popupStore.successModalMessage = "Pomyślnie zalogowano";

                            this.$router.push({ name: 'profil' });
                        }else{
                            this.popupStore.failureModalVisible = true;
                            this.popupStore.failureModalMessage = "Nie znaleziono użytkownika";
                        }
                    });
                }
            }
        }
    }

</script>

<style>
    .error{
        font-size: 14px;
        color: #FA4132;
    }

    #login-box{
        padding: 50px 100px 0;
        width: 400px;
        height: 550px;
        position: absolute;
        top: 30%;
        left: 50%;
        transform: translate(-50%, -30%);
        box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.15);
        border-radius: 2px;
    }

    #login-box h2{
        font-size: 26px;
        text-align: center;
    }

    #login-box p{
        text-align: center;
        margin: 10px 0 50px;
    }

    #login-box form div{
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    #login-box form div label{
        font-size: 20px;
    }

    #login-box form div input{
        padding: 15px;
        height: 50px;
        box-sizing: border-box;
    }

    #login-box button{
        margin-top: 10px;
        width: 400px;
        background-color: #6244DB;
        color: #fff;
        padding: 15px;
        font-size: 18px;
        cursor: pointer;
    }

    #login-box h3{
        text-align: center;
        margin: 20px 0;
    }

    #login-box button#google-button{
        background-color: #fff;
        border: 2px solid #6244DB;
        color: #6244DB;
    }
    
    #login-box button#facebook-button{
        background-color: #fff;
        border: 2px solid #6244DB;
        color: #6244DB;
    }

    #login-box p#for-companies{
        text-align: center;
        margin-top: 40px;
        color: #6244DB;
    }
</style>