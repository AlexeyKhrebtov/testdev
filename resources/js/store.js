import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios'; // для удобства работы с ajax
import router from './router'; // требуется импортировать модуль маршрутизатора чтобы получить доступ к его функциям.
Vue.use(Vuex);

// настройка axios для работы с Laravel Passport 
axios.defaults.headers.common = {
	'X-Requested-With': 'XMLHttpRequest',
	'X-CSRF-TOKEN': window.csrf_token
};

export default new Vuex.Store({
	state: {
		saved: [],
		listing_summaries: [],
		listings: [],
		auth: false, // флаг аутентификации пользователя
		konva: []
	},
	mutations: {
		toggleSaved(state, id) {
			let index = state.saved.findIndex(saved => saved === id);
			if (index === -1) {
				state.saved.push(id);
			} else {
				state.saved.splice(index, 1);
			}
		},
		// Сохранение данных в хранилище для избежания лишних запросов к серверу
		addData(state, { route, data }) {
			if (data.auth) {
				state.auth = data.auth;
			}

			if (route === 'listing') {
				state.listings.push(data.listing);
			}
			else if (route === 'konva') {
				state.konva = data.konva;
			} else {
				state.listing_summaries = data.listings;
			}
		}
	},

	actions: {
		toggleSaved({ commit, state }, id) {
			if (state.auth) {
				// Сначала посылаем запрос на сервер
				axios.post('/api/user/toggle_saved', { id }).then(
					// только после ответа выполняем мутацию состояния
					() => commit('toggleSaved', id)
				);
			} else {
				router.push('/login'); // редиректим если неавторизован
			}
		}
	},

	getters: {
		getListing(state) {
			return id => state.listings.find(listing => id == listing.id);
		}
	}
});