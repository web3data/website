<template>
  <div class="home">

    <section class="intro">
      <Background />

      <div class="card">
        <img class="logo" src="/static/web3data_logo_type_v1.svg" alt="">
        <h3>Decentralized Data Marketplace</h3>
        <p>The ecosystem will include a variety of smart contracts, adopt a utility token Web3data<br>for various transactions and provide various new software applications that allow participants to interact with the ecosystem.</p>
      </div>
    </section>

    <section class="features">
      <div class="grid">
        <div class="grid-column">
          <div class="card-portrait">
            <h1>Economic Driven Data</h1>
            <p>Participants may earn tokens for collecting, forwarding and validating public blockchain data to Amberdata’s or other service providers’ ingestion APIs</p>
          </div>
        </div>

        <div class="grid-column">
          <div class="card-portrait">
            <h1>Network Sourced Data</h1>
            <p>Community data listed in the marketplace and made available via API or bulk download is expected to be monetized by the data provider receiving payments in tokens.</p>
          </div>
          <div class="card-portrait">
            <h1>Curated Data Sets</h1>
            <p>Low friction peer-to-peer mechanisms to publish, consume and monetize blockchain, custom and curated datasets</p>
          </div>
        </div>

        <div class="grid-column">
          <div class="card-portrait">
            <h1>Decentralized Validated Information</h1>
            <p>A blockchain data marketplace is global value proposition and flattens the world enabling peer-to-peer commerce on a global scale.</p>
          </div>
        </div>
      </div>
    </section>

    <section class="cta-form">
      <div class="cta-card">
        <h1>TODO: GForm</h1>
      </div>

      <div class="bk-doodle">
        <css-doodle>
          :doodle {
          @grid: 20 / 100vmax;
          font-family: sans-serif;
          }

          :after {
          content: \@hex(@rand(0x2500, 0x257f));
          color: hsla(@r(360), 70%, 70%, @r(.9));
          font-size: 5vmax;
          }
        </css-doodle>
      </div>
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

.card-portrait {
  background: $color5;
  border-radius: 6px;
  box-shadow: 0 1px 20px -5px rgba(0, 0, 0, 0.3);
  padding: 20px;
  margin: auto;
  display: flex;
  justify-content: flex-end;
  flex-direction: column;
  align-items: flex-start;
  min-height: 50vh;
  text-align: left;

  h1 {
    font-size: 21pt;
    font-weight: 100;
  }

  h1,
  p {
    color: $white;
    margin: 0;
  }
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

.features {
  padding: 50px 0;

  .card-portrait {
    margin: 20px;
  }
}

.cta-form {
  background: $color2;
  display: flex;
  justify-content: center;
  padding: 50px 0;
  position: relative;
  width: 100vw;
  overflow-x: hidden;
  overflow-y: visible;

  .bk-doodle {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 0;
    overflow: hidden;
  }

  .cta-card {
    background: $white;
    border-radius: 8px;
    box-shadow: 0 1px 10px -2px rgba(0, 0, 0, 0.3);
    border: 3px dotted rgba(0, 0, 0, 0.1);
    padding: 20px;
    position: relative;
    margin: auto 0;
    // width: 100%;
    z-index: 10;
  }
}
</style>
