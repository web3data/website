<template>
  <div class="home">
    <Background />

    <div class="card">
      <!-- <h1>Web3Data</h1> -->
      <img class="logo" src="/static/web3data_logo_type_v1.svg" alt="">
      <h3>Blockchain data marketplace</h3>
    </div>

  </div>
</template>

<script>
import Background from './Background'
export default {
  name: 'Home',

  components: {
    Background
  }
}
</script>

<style lang="scss" scoped>
@import '../scss/variables.scss';

.home {
  display: flex;
  text-align: center;
  margin: auto;
}

.card {
  background: $white;
  border-radius: 20px;
  box-shadow: 0 5px 50px -8px rgba(0, 0, 0, 0.3);
  padding: 60px;
  margin: 50px auto;
}

.logo {
  width: 320px;
}
</style>
