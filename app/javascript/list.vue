<template>
  <div class="panel panel-default">
    <div class="panel-heading"  v-bind:class="{ active: isActive }">{{ list.name }}</div>

    <div v-if="list.cards == ''" class="panel-body">No cards yet</div>
    <div v-for="(card, index) in list.cards" class="panel-body">
      <Card :card='card' />
    </div>
  </div>
</template>

<script>
import Card from 'card.vue'

export default {
  props: ["list"],
  components: { Card },
  data() {
    return {
      isActive: this.list.is_active
    }
  }
}
</script>

<style scoped>
.active {
  background: tomato;
}
</style>