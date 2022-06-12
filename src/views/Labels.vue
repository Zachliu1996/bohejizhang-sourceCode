<template>
  <div>
    <Layout>
      <div class="tags">
        <router-link class="tag" v-for="tag in tags" :key="tag.id" :to="`/labels/edit/${tag.id}`">
          <span>{{ tag.name }}</span>
          <svg class="icon">
            <use xlink:href="#icon-you"></use>
          </svg>
        </router-link>
      </div>
      <div class="createTag-wrapper">
        <button class="createTag" @click="createTag">新建标签</button>
      </div>
    </Layout>
  </div>

</template>

<script lang="ts">
import Vue from 'vue';
import {Component} from 'vue-property-decorator';
import Button from '@/components/Button.vue';
import {mixins} from 'vue-class-component'
import TagHelper from '@/mixins/TagHelper'

@Component({
  components: {Button},
})
export default class Labels extends mixins(TagHelper) {
  get tags() {
    return this.$store.state.tagList;
  }

  beforeCreate() {
    this.$store.commit('fetchTags');
  }
};
</script>

<style lang="scss" scoped>
.tags {
  background: white;
  font-size: 16px;
  padding-left: 16px;
  list-style: none;

  > .tag {
    min-height: 48px;
    display: flex;
    border-bottom: 1px solid #e7e7e7;
    justify-content: space-between;
    align-items: center;

    svg {
      width: 16px;
      height: 16px;
      color: #333;
      margin-right: 16px;
    }

  }
}

.createTag {
  border: none;
  color: white;
  background: #4db222;
  height: 32px;
  border-radius: 4px;
  padding: 0 16px;

  &-wrapper {
    text-align: center;
    padding: 24px;
    margin: 24px;
  }
}
</style>