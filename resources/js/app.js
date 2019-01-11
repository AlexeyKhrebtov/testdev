import "core-js/fn/object/assign"; // Добавляем Polyfills - для получения доступа к новым API JS
import Vue from 'vue';

import router from './router'
import App from './components/App.vue';

var app = new Vue({
    el: '#app',
    render: h => h(App),
    router
});
 
/*
let model = JSON.parse(window.vuebnb_listing_model);
import { populateAmenitiesAndPrices } from './helpers';
model = populateAmenitiesAndPrices(model);


var app = new Vue({
    el: '#app',
    data: Object.assign(model, {}),
    components: {
        ImageCarousel,
        ModalWindow,
        HeaderImage,
        FeatureList,
        ExpandableText
    },
    methods: {
        openModal() {
            this.$refs.imagemodal.modalOpen = true; // через $refs можем менять состояние дочернего компонента
        },
    }
});
*/