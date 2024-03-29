module.exports = {
  env: {
    commonjs: true,
    es2021: true,
    node: true,
  },
  extends: ['airbnb-base', 'plugin:prettier/recommended'],
  parserOptions: {
    ecmaVersion: 13,
  },
  rules: {
    'class-methods-use-this': 'off',
    'consistent-return': 'off',
    camelcase: 'off',
    'object-curly-newline': 'off',
    'no-unused-vars': ['error', { argsIgnorePattern: 'next' }],
    'no-console': 'off',
  },
};
