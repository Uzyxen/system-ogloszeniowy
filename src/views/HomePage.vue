<template>
    <section>
        <div id="main-left">
            <OfferCounter/>
            <div id="main-text">
                <h2>Sprawdzonych ofert pracy</h2>
                <h3>od najlepszych pracodawców</h3>
            </div>

            <div id="button-box">
                <button id="search-for-offers"><a href="#search-for-offers-section">Szukaj ofert</a></button>
                <button id="find-out-more"><a href="">Dowiedz się więcej</a></button>
            </div>
        </div>

        <div id="main-right">
            <div id="blur-circle"></div>

            <img src="src/assets/home-abstract-1.svg" alt="Home abstract 1" id="abstract-1">
            <img src="src/assets/home-abstract-2.svg" alt="Home abstract 2" id="abstract-2">
            <img src="src/assets/home-abstract-3.svg" alt="Home abstract 3" id="abstract-3">
            <img src="src/assets/home-abstract-4.svg" alt="Home abstract 4" id="abstract-4">
            <img src="src/assets/home-abstract-5.svg" alt="Home abstract 5" id="abstract-5">
            <img src="src/assets/home-photo-1.png" alt="Home photo 1" id="photo-1">
            <img src="src/assets/home-photo-2.png" alt="Home photo 2" id="photo-2">
            <img src="src/assets/home-photo-3.png" alt="Home photo 3" id="photo-3">
        </div>
    </section>
</template>

<script>
    import OfferCounter from '../components/OfferCounter.vue';

    export default{
        components: {
            OfferCounter
        }
    }
</script>

<style scoped>
    section{
        margin-top: 220px;
        padding: 0 150px;
        display: flex;
        position: relative;
        height: calc(100vh - 60px);

    }   

    #main-left, #main-right{
        width: 50%;
    }

    div#main-text{
        width: 560px;
    }

    #button-box{
        margin-top: 80px;
        display: flex;
        gap: 30px;
    }

    #button-box button{
        width: 250px;
        height: 60px;
        padding: 0;
    }

    #button-box button a{
        width: 100%;
        height: 100%;
        cursor: pointer;
        font-weight: 700;
        text-decoration: none;
        color: #fff;
        display: block;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    #button-box button#find-out-more a{
        width: calc(100% - 8px);
        height: calc(100% - 8px);
    }

    #search-for-offers{
        background-color: #6244DB;
        color: #fff;
        font-size: 25px;
    }

    #find-out-more a{
        border: 4px solid #6244DB;
        color: #6244DB !important;
        font-size: 20px;
    }

    h2{
        color: #393939;
        font-size: 40px;
        font-weight: 800;
        padding: 5px 0;
    }

    h3{
        color: #A3A3A3;
        font-size: 20px;
        font-weight: 800;
        text-align: right;
    }
    
    #blur-circle{
        background: rgba(98, 68, 219, 0.16);
        width: 1126px;
        height: 1125px;
        filter: blur(150px);
        position: absolute;
        top: -300px;
        right: 0;
        border-radius: 50%;
    }

    #main-right img{
        position: absolute;
    }

    img#photo-1{
        top: -100px;
        right: 600px;
    }
    
    img#photo-2{
        right: 150px;
    }

    img#photo-3{
        right: 670px;
        top: 260px;
    }

    img#abstract-1{
        right: 880px;
        top: 40px;
    }

    img#abstract-2{
        right: 190px;
        top: 350px;
    }

    img#abstract-3{
        right: 190px;
        top: -140px;
    }

    img#abstract-4{
        right: 650px;
        top: 190px;
    }

    img#abstract-5{
        right: 600px;
        top: 500px;
    }

    @media (min-width: 1920px){
        section{
            margin: 200px auto 0;
            max-width: 1440px;
        }
    }


</style>