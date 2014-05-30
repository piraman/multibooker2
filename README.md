File structure:

multibooker/
	api/
	app/
		dev/
			dashboard/
				i18n/
					ru.json
					en.json
				images/
				scripts/
					vendors/
					controllers/
						blocks/
							headbar/
								headbar.js
							menu/
							dock/
							chat/
						entities/
							addresses/
								addresses.js
								address.js
							orders/
								orders.js
								order.js
								order-detailed.js
								order-compound.js
							pages/
								home/
									home.js
					filters/
					services/
						resources/
							addresses/
								address.js
					directives/
					app.js
				styles/
					variables.styl
					mixins.styl
					core.styl
					...
					vendors/
				templates/
					blocks/
						headbar/
							headbar.html
						manu/
						dock/
						chat/
					entities/
						addresses/
							addresses.html
							address.html
						orders/
							orders.html
							order.html
							order-detailed.html
							order-compound.html
					pages/
						home/
							home.html
				index.html
			login/
		dist/
			dashboard/
				fonts/
				images/
				scripts/
				styles/
				index.html
			login/
				fonts/
				images/
				scripts/
				styles/
				index.html
		docs/
		tests/
			e2e/
			specs/
			runner.htnl

Plan:

- Make layout like in http://iarouse.com/admin-square/dist-v1.2/index.html
- Make TableDirective, FormController
- Dock tabs
- Menu
- UI
- Map
- i18n
- e2e
- Specs
