<template>
    <header>
        <div id="topbar">
            <router-link id="logo" to="/">moluj.pl</router-link>
            <nav>
                <router-link to="/praca">Oferty pracy</router-link>
                <router-link to="/kreator-cv">Kreator CV</router-link>
            </nav>

            <div id="my-account">
                <div id="my-acc" @click="account_dropdown_visible = !account_dropdown_visible">
                    Moje konto
                </div>

                <div id="my-account-dropdown" v-if="account_dropdown_visible" @click="czytaj">
                    <div id="dropdown-user-logged" v-if="userStore.logged">
                        <ul>
                            <li>Profil</li>
                            <li>Ustawienia</li>
                        </ul>

                        <hr>

                        <button @click="logout">Wyloguj się</button>
                    </div>

                    <div v-else-if="userStore.logged == false">
                        <h2>Zaloguj się, aby uzyskać dostęp do wszystkich ofert pracy</h2>
                        <router-link to="/logowanie"><button id="login-button">Zaloguj się</button></router-link>
                        <h3>Lub</h3>
                        <router-link to="/rejestracja"><button id="register-button">Zarejestruj się</button></router-link>
                    </div>
                </div>
            </div>
        </div>
    </header>
</template>

<script>
    import { useUserStore } from '../store/store';

    export default{
        setup(){
            const userStore = useUserStore();

            return { userStore }
        },

        data(){
            return {
                account_dropdown_visible: false
            }
        },
        methods: {
            logout(){
                this.userStore.logOutUser('http://localhost/system-ogloszeniowy/src/api/logOut.php', {});
            }
        }
    }
</script>

<style>
    header{
        box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.15);
        z-index: 999;
        position: relative;
    }

    #topbar{
        height: 60px;
        padding: 0 150px;
        display: flex;
        align-items: center;
    }   

    #topbar a{
        text-decoration: none;
    }

    nav{
        flex: 1;
    }

    a#logo{
        color: #6244DB;
        font-size: 35px;
        font-weight: 700;
    }

    nav a{
        padding: 0 0 0 60px;
        color: #393939;
        font-weight: 700;
        font-size: 15px;
    }

    #my-account{
        background-color: #6244DB;
        border-radius: 50px;
        color: #fff;
        width: 160px;
        height: 40px;
    }

    #my-acc{
        cursor: pointer;
        width: 100%;
        height: 100%;
        border-radius: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    #my-account-dropdown{
        position: absolute;
        top: 58px;
        right: 150px;
        background-color: #fff;
        border: 1px solid #DDD;
        border-radius: 4px;
        padding: 10px 15px;
    }

    #my-account-dropdown p{
        color: #000;
    }

    #my-account-dropdown p > span{
        font-weight: 700;
    }

    #my-account-dropdown > div{
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 300px;
    }

    #my-account-dropdown > div h2{
        color: #000;
        font-size: 15px;
        margin: 10px 0 15px;
        width: 280px;
    }

    #my-account-dropdown > div button{
        cursor: pointer;
        font-size: 18px;
        padding: 10px;
        width: 280px;
        height: 45px;
    }

    #dropdown-user-logged{
        width: 200px !important;
    }

    #dropdown-user-logged button{
        width: 200px !important;
        border: 3px solid #6244DB;
        color: #6244DB;
    }

    #dropdown-user-logged ul{
        width: 100%;
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        gap: 5px;
    }

    #dropdown-user-logged ul li{
        cursor: pointer;
        color: #000;
        display: flex;
        justify-content: center;
        padding: 20px 0;
        background-color: #eee;
    }

    #login-button{
        background-color: #6244DB;
        color: #fff;
    }

    #register-button{
        border: 3px solid #6244DB;
        color: #6244DB;
        margin-bottom: 10px;
    }

    #my-account-dropdown > div h3{
        color: #000;
        font-size: 18px;
        margin: 10px 0;
    }

    hr{
        margin-top: 40px;
        border: none;
        height: 1px;
        background-color: #DDD;
        width: 100%;
    }

    @media (min-width: 1920px){
        #topbar{
            max-width: 1440px;
            margin: 0 auto;
        }
    }
    
</style>