<template>
    <main>
        <div id="main-left">
            <OfferCounter/>
            <div id="main-text">
                <h2>Sprawdzonych ofert pracy</h2>
                <h3>od najlepszych pracodawców</h3>
            </div>
        </div>

        <div id="main-right">

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
    }   

    #main-left{
        width: 50%;
    }

    div#main-text{
        width: 560px;
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

</style>