<template>
    <header>
        <div id="topbar">
            <a href="/" id="logo">moluj.pl</a>
            <nav>
                <a href="/">Oferty pracy</a>
                <a href="/">Kreator CV</a>
            </nav>

            <div id="my-account">
                moje konto
            </div>
        </div>
    </header>
</template>

<script>

</script>

<style>
    header{
        box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.15);
        z-index: 999;
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
        cursor: pointer;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #6244DB;
        border-radius: 50px;
        color: #fff;
        width: 160px;
        height: 40px;
    }

    @media (min-width: 1920px){
        #topbar{
            max-width: 1440px;
            margin: 0 auto;
        }
    }
    
</style>