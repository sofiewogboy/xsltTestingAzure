var path = require('path');
var nodeExternals = require('webpack-node-externals');
/*var fs = require('fs');

var nodeModules = {};
nodeModules['fs'] = "require('fs')";
fs.readdirSync('node_modules')
  .filter(function(x) {
    return ['.bin'].indexOf(x) === -1;
  })
  .forEach(function(mod) {
    nodeModules[mod] = 'commonjs ' + mod;
  });*/

module.exports = {
  entry: './server.js',
  target: 'node',
  output: {
    path: path.join(__dirname, 'build'),
    filename: 'backend.js'
  },
  node: {
    console: false,
    fs: 'empty',
    net: 'empty',
    tls: 'empty'
  },
  externals: [nodeExternals()]
}