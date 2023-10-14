<template>
    <section id="search-for-offers-section">
        <h2>Szukanie ofert</h2>
        <div id="search-box">
            <form action="">
                <div id="inputs">
                    <input type="text" id="search" placeholder="stanowisko">
                    <div id="category">Kategoria</div>
                    <input type="text" id="location" placeholder="Lokalizacja">
                    <div id="distance">Odległość</div>
                </div>

                <button>Szukaj</button>
            </form>
        </div>
    </section>
</template>

<script>

</script>

<style scoped>
    section{
        height: 100vh;
        padding: 50px 150px 0;
        position: relative;
        background-color: #6244DB;
    }

    h2{
        text-align: center;
        color: #fff;
        font-size: 35px;
        font-weight: 800;
    }

    #search-box{
        margin: 40px auto 0;
        width: 1050px;
        height: 300px;
        border-radius: 5px;
        background: #FFF;
        box-shadow: 3px 4px 37px -3px rgba(0, 0, 0, 0.25);
        padding: 40px 20px;
        display: flex;
        justify-content: center;
    }

    form #inputs{
        display: flex;
    }

    form button{
        color: #FFF;
        background-color: #6244DB;
        font-size: 20px;
        width: 200px;
        padding: 10px;
    }

    input#search{
        width: 350px;
        height: 40px;
    }

    #category{
        font-size: 14px;
        display: flex;
        justify-content: flex-start;
        align-items: center;
        width: 200px;
        height: 40px;
        border: 1px solid #A3A3A3;
        border-left: none;
    }

    input#location{
        width: 200px;
        height: 40px;
        border-left: none;
    }

    #distance{
        font-size: 14px;
        width: 200px;
        height: 40px;
        border: 1px solid #A3A3A3;
        border-left: none;
        display: flex;
        align-items: center;
    }

</style>