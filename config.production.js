/*
|-------------------------------------------------------------------------------
| Development config               https://maizzle.com/docs/environments/#local
|-------------------------------------------------------------------------------
|
| The exported object contains the default Maizzle settings for development.
| This is used when you run the `maizzle build` or `maizzle serve` and it
| has the fastest build time, since most transformations are disabled.
|
*/

module.exports = {
    inlineCSS: {
        styleToAttribute: {
          'background-color': 'bgcolor',
          'background-image': 'background',
          'text-align': 'align',
          'vertical-align': 'valign'
        },
        mergeLonghand: false,
        applySizeAttribute: {
          width: [],
          height: []
        },
        keepOnlyAttributeSizes: {
          width: [],
          height: []
        },
        preferBgColorAttribute: false,
        excludedProperties: null
      },
  build: {
    destination: {
      path: 'build_local',
    },
    tailwind: {
      css: 'src/assets/css/main.css',
    },
    templates: {
      root: 'src/templates',
    },
  },

  prettify: {
    enabled: true,
  },

  inlineCSS: true

}
