module.exports = {
  theme: {
    extend: {
      height: {
        "100px": "100px"
      },
      width: {
        "100px": "100px"
      }
    }
  },
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ]
}
