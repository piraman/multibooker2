# [ng-context-menu](http://ianwalter.github.io/ng-context-menu/)
*An AngularJS directive to display a context menu when a right-click event is triggered*

This project was built using [ng-boilerplate](https://github.com/ianwalter/ng-boilerplate)!

#### Step 1: Install ng-context-menu

Install using Bower:

```
bower install ng-context-menu --save
```

Include ng-context-menu.min.js in your app.

#### Step 2: Load the ng-context-menu module

```javascript
var app = angular.module('menu-demo', ['ngRoute', 'ng-context-menu'])
```

#### Step 3: Add the context-menu directive to a DOM element

```html
<div context-menu class="panel panel-default" data-target="myMenu"
     ng-class="{ 'highlight': highlight, 'expanded' : expanded }">
  ...
</div>
```

**Note:** The position of the dropdown menu can get a little out of whack if you place the dropdown menu in a container
with padding/margin/etc so it's best to place it as a direct child of the body element as is shown in this example.
You could also use the css property ```position: fixed``` but then it won't expand the window if the dropdown menu is
triggered at the bottom of the window and needs more space.

#### Disabling the contextmenu

If you need to disable the contextmenu in certain circumstances, you can add an expression to the
 ```context-menu-disabled``` attribute. If the expression evaluates to true, the contextmenu will be
 disabled, for example, ```context-menu-disabled="1 === 1"```

That's it, I hope you find this useful!

«–– [Ian](http://ianvonwalter.com)
