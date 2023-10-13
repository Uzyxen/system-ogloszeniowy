<template>
    <main>
        <div id="main-left">
            <OfferCounter/>
            <div id="main-text">
                <h2>Sprawdzonych ofert pracy</h2>
                <h3>od najlepszych pracodawców</h3>
            </div>

            <div id="button-box">
                <button id="search-for-offers">Szukaj ofert</button>
                <button id="find-out-more">Dowiedz się więcej</button>
            </div>
        </div>

        <div id="main-right">
            <div id="blur-circle"></div>

            <img src="src/assets/home-photo-1.png" alt="Home photo 1" id="photo-1">
            <img src="src/assets/home-photo-2.png" alt="Home photo 2" id="photo-2">
            <img src="src/assets/home-photo-3.png" alt="Home photo 3" id="photo-3">
        </div>
    </main>
</template>

<script>
    import OfferCounter from './OfferCounter.vue';

    export default{
        components: {
            OfferCounter
        }
    }
</script>

<style>
    main{
        margin-top: 200px;
        padding: 0 150px;
        display: flex;
        position: relative;
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
        cursor: pointer;
        width: 250px;
        height: 60px;
        font-weight: 700;
    }

    #search-for-offers{
        background-color: #6244DB;
        color: #fff;
        font-size: 25px;
    }

    #find-out-more{
        border: 4px solid #6244DB;
        color: #6244DB;
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
        background: rgba(98, 68, 219, 0.20);
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
        bottom: -260px;
    }

</style>