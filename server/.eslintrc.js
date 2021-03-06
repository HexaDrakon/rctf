const path = require('path')

module.exports = {
  env: {
    node: true
  },
  plugins: [
  ],
  rules: {
  },
  parser: '@typescript-eslint/parser',
  parserOptions: {
    tsconfigRootDir: path.dirname(__dirname),
    project: ['./tsconfig.json']
  },
  overrides: [{
    files: ['*.ts'],
    extends: [
      'plugin:@typescript-eslint/recommended'
    ],
    plugins: [
      '@typescript-eslint'
    ]
  }, {
    files: ['.eslintrc.js'],
    parser: 'espree'
  }]
}
