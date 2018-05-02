<template>
  <div class="panel panel-default">
    <div class="panel-heading"  v-bind:class="{ active: isActive}">
      {{ list.name }}
      <span v-if="list.cards != ''" class="badge"> {{ numberOfCards }}</span>
    </div>

    <div class="panel-body"> 
      <div v-if="list.cards == ''" class="no-cards">No cards to show</div>
      <div v-else v-for="(card, index) in list.cards">
        <Card :card='card' />
      </div>
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
      isActive: this.list.is_active,
      numberOfCards: this.list.cards.length
    }
  }
}
</script>

<style scoped>
.active {

}

.no-cards {
  color: #7f8c8d; /* grey */
}
</style>