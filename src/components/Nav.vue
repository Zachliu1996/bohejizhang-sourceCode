<template>
  <nav>
    <router-link to="/money" class="item" active-class="selected">
      <svg class="icon">
        <use xlink:href="#icon-money"></use>
      </svg>
      记账
    </router-link>
    <router-link to="/labels" class="item" active-class="selected">
      <svg class="icon">
        <use xlink:href="#icon-label"></use>
      </svg>
      标签
    </router-link>
    <router-link to="statistics" class="item" active-class="selected">
      <svg class="icon">
        <use xlink:href="#icon-statistics"></use>
      </svg>
      统计
    </router-link>
  </nav>
</template>

<script lang="ts">
import x from '@/assets/icons/labels.svg';

export default {
  name: 'Nav'
};
</script>


<style lang="scss" scoped>
nav {
  display: flex;
  box-shadow: 0 0 3px rgba(0, 0, 0, 0.25);
  flex-direction: row;
  font-size: 12px;

  > .item {
    padding: 2px 0;
    width: 33.33333%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;

    .icon {
      width: 32px;
      height: 32px;
    }
  }

  > .item.selected {
    color: darkorange;
    transform: scale(1.1);
  }
}
</style>
