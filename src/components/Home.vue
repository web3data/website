<template>
  <div class="home">

    <section class="intro">
      <Background />

      <div class="card">
        <!-- <h1>Web3Data</h1> -->
        <img class="logo" src="/static/web3data_logo_type_v1.svg" alt="">
        <h3>Blockchain data marketplace</h3>
      </div>
    </section>

    <section class="features">
      <div class="grid">
        <div class="grid-column">
          <div class="card">
            <h1>Web3Data</h1>
            <h3>Blockchain data marketplace</h3>
          </div>
        </div>

        <div class="grid-column">
          <div class="card">
            <h1>Web3Data</h1>
            <h3>Blockchain data marketplace</h3>
          </div>
          <div class="card">
            <h1>Web3Data</h1>
            <h3>Blockchain data marketplace</h3>
          </div>
        </div>

        <div class="grid-column">
          <div class="card">
            <h1>Web3Data</h1>
            <h3>Blockchain data marketplace</h3>
          </div>
        </div>
      </div>
    </section>

    <section class="cta-form">
      <h1>TODO: GForm</h1>
    </section>

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
  text-align: center;
  margin: auto;
}

.card {
  background: $white;
  border-radius: 20px;
  box-shadow: 0 5px 50px -8px rgba(0, 0, 0, 0.3);
  padding: 60px;
  margin: auto;
}

.logo {
  width: 320px;
}

.grid {
  display: grid;
  grid-template-columns: 33.33% 33.33% 33.33%;
}

.grid-column {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.intro {
  background: transparentize($color3, 0.3);
  background: linear-gradient(
    141deg,
    transparentize($color3, 1) 0%,
    transparentize($color3, 0.3) 100%
  );
  position: relative;
  width: 100vw;
  height: 90vh;
  display: flex;
  overflow: hidden;

  &:after {
    position: absolute;
    background: $white;
    content: '';
    width: calc(100vw + 100px);
    height: 500px;
    transform: rotate(-3deg);
    left: -30px;
    top: 85vh;
  }
}

.cta-form {
  width: 100vw;
}
</style>
