<template>
    <div id="root">

        <div id="prof-left">
            <div id="profile-picture">
                <div id="dots">
                    <div id="dots-menu" v-if="dots_menu">
                        Tryb edycji
                        <input type="checkbox" @click="edit_mode = !edit_mode">
                    </div>

                    <div id="dots-inner" @click="dots_menu = !dots_menu">
                        <div class="dot"></div>
                        <div class="dot"></div>
                        <div class="dot"></div>
                    </div>
                </div>

                <div id="picture">
                    <div id="change-pp" v-if="edit_mode">

                    </div>
                </div>
                <h3 id="name">
                    <span v-if="edit_mode == false">{{ userStore.first_name }} {{ userStore.last_name }}</span>
                    <input v-else type="text">
                </h3>
                <p id="position">
                    <span v-if="edit_mode == false">{{ userStore.position }}</span>
                    <input v-else type="text">
                </p>
            </div>

            <div id="short-info">
                <div>
                    <span>Płeć</span>
                    <p>{{ userStore.gender }}</p>
                </div>

                <div>
                    <span>Wiek</span>
                    <p>{{ userStore.age }} Lat</p>
                </div>

                <div>
                    <span>Kraj</span>
                    <p>{{ userStore.country }}</p>
                </div>
            </div>
        </div>

        <div id="prof-right">
            <nav id="prof-nav">
                <ul>
                    <li id="current">Profil</li>
                    <li>CV</li>
                </ul>

                <div id="current-line"></div>
            </nav>
        </div>
    </div>
</template>

<script>
    import { useUserStore } from '../store/store';

    export default {
        setup() {
            const userStore = useUserStore();

            return { userStore }
        },
        data(){
            return {
                dots_menu: false,
                edit_mode: false
            }
        }
    }
</script>

<style scoped>
    #root{
        padding: 40px 150px 0;       
        display: flex; 
        gap: 20px;
    }

    #prof-left{
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    #prof-right{
        height: 720px;
        width: calc(100% - 320px)
    }

    #prof-nav{
        width: 100%;
        height: 50px;
        box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.25);
        position: relative;
    }

    #prof-nav ul{
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
        height: 100%;
        align-items: center;
    }
    
    #prof-nav ul li{
        font-size: 17px;
        color: #B0AEB8;
        font-weight: 600;
        height: 100%;
        display: flex;
        align-items: center;
        position: relative;
        padding: 0 20px;
        cursor: pointer;
    }

    #prof-nav ul li#current{
        color: #6244DB;
    }

    #current-line{
        position: absolute;
        background-color: #6244DB;
        height: 4px;
        width: 90px;
        bottom: 0;
    }

    #prof-left #short-info{
        width: 300px;
        height: 400px;
        box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.25);
        display: flex;
        flex-direction: column;
    }

    #short-info div{
        padding: 35px 0 0 25px;
        display: flex;
        flex-direction: column;
        row-gap: 5px;
    }

    #short-info div span{
        color: #B0AEB8;
        font-weight: 600;
    }

    #short-info div p{
        color: #393939;
        margin: 0;
        font-weight: 600;
    }

    #profile-picture{
        width: 300px;
        height: 300px;
        box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.25);
        position: relative;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    #dots{
        display: flex;
        justify-content: flex-end;
        width: calc(100% - 20px);
        padding: 10px 20px 0 0;
        position: relative;
    }

    #dots-inner{
        display: flex;
        gap: 5px;
        width: 25px;
        height: 25px;
        cursor: pointer;
        align-items: center;
    }

    .dot{
        background-color: #AAA;
        width: 5px;
        height: 5px;
        border-radius: 50%;
        transition: background-color .2s ease-in-out;
    }

    #dots-inner:hover .dot{
        background-color: #6244DB;
    }

    #dots-menu{
        background-color: #FFF;
        height: 50px;
        width: 100px;
        border: 1px solid black;
        position: absolute;
        bottom: -50px;
        right: -55px;
    }

    #picture{
        background-image: url('../assets/example-pp.jpg');
        width: 150px;
        height: 150px;
        background-size: cover;
        border-radius: 50%;
        margin-top: 10px;
    }

    h3#name{
        color: #393939;
        font-size: 22px;
        margin-top: 20px;
    }

    p#position{
        font-size: 14px;
        color: #6244DB;
        margin-top: 3px;
        font-weight: 600;
    }

    #change-pp{
        width: 100%;
        height: 100%;
        border-radius: 50%;
        cursor: pointer;
        transition: background-color .2s ease-in-out;
    }

    #change-pp:hover{
        background-color: #00000050;
    }

    @media (min-width: 1920px){
        #root{
            max-width: 1440px;
            margin: 0 auto;
        }
    }

</style>