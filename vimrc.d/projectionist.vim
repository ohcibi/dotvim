let g:projectionist_heuristics = {
    \ "ember-cli-build.js": {
    \     "app/index.html": { "type": "index" },
    \     "app/app.js": { "type": "app" },
    \     "app/adapters/*.js": { "type": "adapter" },
    \     "app/*/adapter.js": { "type": "adapter" },
    \     "app/controllers/*.js": { "type": "controller" },
    \     "app/*/controller.js": { "type": "controller" },
    \     "app/helpers/*.js": { "type": "helper" },
    \     "app/mixins/*.js": { "type": "mixin" },
    \     "app/models/*.js": { "type": "model" },
    \     "app/*/model.js": { "type": "model" },
    \     "app/routes/*.js": { "type": "route" },
    \     "app/*/route.js": { "type": "route" },
    \     "app/router.js": { "type": "router" },
    \     "app/services/*.js": { "type": "service" },
    \     "app/styles/*.sass": { "type": "style" },
    \     "app/styles/*.scss": { "type": "style" },
    \     "app/styles/*.less": { "type": "style" },
    \     "app/styles/*.css": { "type": "style" },
    \     "app/templates/*.js": { "type": "template" },
    \     "app/*/template.hbs": { "type": "template" },
    \     "config/environment.js": { "type": "conf" },
    \     "tests/*-test.js": { "type": "test" },
    \     "tests/integration/*-test.js": { "type": "integrationtest" },
    \     "tests/acceptance/*-test.js": { "type": "acceptancetest" },
    \     "ember-cli-build.js": { "type": "buildfile" },
    \     "app/templates/components/*.hbs": {
    \       "alternate": ["tests/integration/component/{}/component-test.js"],
    \       "type": "component"
    \     },
    \     "app/components/*/component.js": {
    \       "alternate": ["tests/integration/component/{}/component-test.js"],
    \       "type": "component"
    \     },
    \     "app/components/*.hbs": {
    \       "alternate": ["tests/integration/component/{}/component-test.js"],
    \       "type": "component"
    \     },
    \     "app/*.js": {
    \       "alternate": ["tests/unit/{}-test.js", "tests/integration/{}-test.js"],
    \       "type": "source"
    \     },
    \     "tests/unit/*-test.js": {
    \       "alternate": "app/{}.js",
    \       "type": "unittest"
    \     },
    \     "tests/integration/components/*/component-test.js": {
    \       "alternate": "app/components/{}/component.js",
    \       "type": "componenttest"
    \     },
    \     "*": {
    \       "console": "node",
    \       "start": "npm start"
    \     },
    \ }}
