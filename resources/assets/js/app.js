require('./bootstrap');
window.Vue = require('vue');

/****************************************
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*
*				components				*
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*
****************************************/

// helper component
import './components/Helper/_all';

// frontend component
import './components/Frontend/_all';

// backend component
import './components/Backend/_all';


import { store } from './store';
import { custom } from './mixin';
window.app = new Vue({
    el: '#app',
    mixins: [custom],
    store,
});