File structure:

<pre>
	multibooker/
		client/
			dev/
				dashboard/
					app/
						headbar/
							headbar.css
							headbar.js
							headbar.spec.js
							headbar.tpl.html
							searchbox/
								searchbox.css
								searchbox.js
								searchbox.spec.js
								searchbox.tpl.html
						menu/
							menu.tpl.html
							menu.js
							menu.css
							menu.spec.js
						views/
							home/
								home.tpl.html
								home.js
								home.css
							entities/
								addresses/
									address.js
									address.spec.js
									address.tpl.html
									addresses.js
									addresses.spec.js
							common/
								tables/
									table.js
									table.spec.js
									table.tpl.html
						app.css
						app.js
						routes.js
					static/
						fonts/
						images/
					index.html
</pre>

Plan:

<pre>
	- Make layout like in http://iarouse.com/admin-square/dist-v1.2/index.html
	- Make TableDirective, FormController
	- Dock tabs
	- Menu
	- UI
	- Map
	- i18n
	- e2e
	- Specs
</pre>