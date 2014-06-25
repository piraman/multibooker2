File structure:

<pre>
	multibooker/
		backend/
		frontend/
			dashboard/
				headbar/
					headbar.controller.coffee
					headbar.index.coffee
					headbar.module.coffee
					headbar.template.jade
				menu/
					... like headbar
				halls/
					halls.module.coffee
					halls.index.coffee
					halls.collection.template.jade
					halls.collection.controller.coffee
					halls.document.template.jade
					halls.document.controller.coffee
					halls.quickview.template.jade
					halls.quickview.controller.coffee
					halls.crud.service.coffee
				app.constants.coffee
				app.controller.coffee
				app.directives.coffee
				app.filters.coffee
				app.index.coffee
				app.module.coffee
				app.routes.coffee
				app.run.coffee
				app.sevices.coffee
				index.jade
				require.config.coffee
			signin/
</pre>

Endpoints:

App endpoints:

- standart crud endpoints

<pre>
	/events
	/subscriptions
	/orders
	/tickets
	/webcustomers
	/funds
	/pricezones
	/addresses
	/halls
	/ages
	/seatcolors
	/blanktypes
	/showtypes
	/showgenres
	/agentclasses
	/cardtypes
	/shows
	/bsoblanks
	/bsoinvoices
	/hallschemes
	/agents
	/eventorganizers
	/ticketsuppliers
	/users
	/roles
	/workplaces
	/menuitems
	/printers
	/sysparameters
	/clientobjects
	/companies
	/salesites
	/rolegroups
	/basisevents
	/logedoperations
</pre>

Api endpoints:

- standart crud endpoints

<pre>
	/events
	/subscriptions
	/orders
	/tickets
	/webcustomers
	/funds
	/pricezones
	/addresses
	/halls
	/ages
	/seatcolors
	/blanktypes
	/showtypes
	/showgenres
	/agentclasses
	/cardtypes
	/shows
	/bsoblanks
	/bsoinvoices
	/hallschemes
	/agents
	/eventorganizers
	/ticketsuppliers
	/users
	/roles
	/workplaces
	/menuitems
	/printers
	/sysparameters
	/clientobjects
	/companies
	/salesites
	/rolegroups
	/basisevents
	/logedoperations
</pre>