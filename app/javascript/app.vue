<template>
  <div id="app" class="row">
    <div v-for="list in original_lists" class="col-sm-3">
      <List :list='list' />
    </div>
  </div>
</template>

<script>
import List from 'list.vue'

export default {
  props: ["original_lists"],
  components: { List }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
