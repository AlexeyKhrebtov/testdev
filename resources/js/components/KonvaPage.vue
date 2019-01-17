<template>
	<div class="home-container">
		<h1>Konva</h1>
		<v-stage :config="configKonva">
			<v-layer>
				<v-circle :config="configCircle"></v-circle>
			</v-layer>

			<v-layer>
				<v-text :x=10 :y=10 :text="house_name"></v-text>
				<v-rect :config="configrect"></v-rect>
			</v-layer>
		</v-stage>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				configKonva: {
					width: 1080,
					height: 600
				},
				configCircle: {
					x: 100,
					y: 500,
					radius: 70,
					fill: "red",
					stroke: "black",
					strokeWidth: 4
				},
				configrect: {
					x: 50,
					y: 50,
					width: 100,
					height: 50,
					fill: 'green',
					stroke: 'black',
					strokeWidth: 4
				}
			};
		},

		computed: {
            house_name() {
                return this.$store.state.konva[0].house_name
            }
        },
	};
</script>

<style>
	.konvajs-content {
		border: 1px solid;
	}
</style>