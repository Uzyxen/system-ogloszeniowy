<template>
    <div>
        <h2>Oferty pracy</h2>

        <div id="offers">
            <div class="offer" v-for="offer in offers" :key="offer.id" @click="showOfferDetail(offer.id)">
                <h3>{{ offer.title }}</h3>
                <p>{{ offer.description }}</p>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                offers: [
                    {
                        id: 1,
                        title: 'starszy vuejs developer',
                        description: 'koks który robi w vuejs'
                    },
                    {
                        id: 2,
                        title: 'młodszy vuejs developer',
                        description: 'koks (lecz mniejszy) który robi w vuejs'
                    },
                ]
            }
        },
        methods:{
            showOfferDetail(id) {
                this.$router.push({ name: 'oferta', params: { id } });
            }
        }
    }
</script>

<style>
    h2{
        text-align: center;
        font-size: 30px;
        padding: 10px;
    }

    .offer{
        border: 1px solid #DDD;
    }

</style>