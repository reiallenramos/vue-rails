<template>
  <div id="app" class="row">
    <div v-for="list in original_lists" class="col-sm-3">
      <div class="panel panel-default">
        <div class="panel-heading">{{ list.name }}</div>

        <div v-if="list.cards == ''" class="panel-body">No cards yet</div>
        <div v-for="(card, index) in list.cards" class="panel-body">
          {{ card.name }}
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["original_lists"]
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
