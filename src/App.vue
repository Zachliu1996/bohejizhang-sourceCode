<template>
  <div id="app">
    <router-view/>
  </div>
</template>


<style lang="scss">
@import "~@/assets/helper.scss";

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #333;
  line-height: 1.5;
  font-family: $font-kaiti;
  font-size: 16px;
  background: #f5f5f5;
}

a {
  text-decoration: none;
  color: inherit;
}

ul.li {
  list-style: none;
}

button, input {
  font: inherit;
}

:focus {
  outline: none;
}

#app {
  max-width: 500px;
  margin-left: auto;
  margin-right: auto;
}
</style>
