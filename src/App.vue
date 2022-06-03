<template>
  <div id="app">
    <router-view />

  </div>
</template>


<style lang="scss">
@import "~@/assets/helper.scss";
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body{
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #333;
  line-height: 1.5;
  font-family: $font-kaiti;
}
a{
  text-decoration: none;
  color:inherit ;
}

</style>
