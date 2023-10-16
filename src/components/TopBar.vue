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

                <div id="my-account-dropdown" v-if="account_dropdown_visible">
                    <p>Zalogowany jako: <span>{{ login }}</span></p>
                </div>
            </div>
        </div>
    </header>
</template>

<script>
    export default{
        data(){
            return{
                login: 'uzyxen',
                account_dropdown_visible: false
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
        background-color: #fff;
        border: 1px solid #DDD;
        border-radius: 4px;
        padding: 5px;
    }

    #my-account-dropdown p{
        color: #000;
    }

    #my-account-dropdown p > span{
        font-weight: 700;
    }

    @media (min-width: 1920px){
        #topbar{
            max-width: 1440px;
            margin: 0 auto;
        }
    }
    
</style>