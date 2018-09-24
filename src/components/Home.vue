<template>
  <div class="home">

    <section class="intro">
      <Background />

      <div class="card">
        <img class="logo" src="/static/web3data.org.svg" alt="">
        <h1 class="pg-title">web3data.org</h1>
        <h3>The Blockchain Data Nexus</h3>
      </div>
    </section>

    <section class="features">
      <div class="grid">
        <div class="grid-column">
          <div class="card-portrait">
            <div class="bg-img bg-1" />
            <div class="bg-img ol-1" />
            <h1>Economic Driven Data</h1>
            <p>Participants may earn tokens for collecting, forwarding and validating public blockchain data to Amberdata’s or other service providers’ ingestion APIs</p>
          </div>
        </div>

        <div class="grid-column">
          <div class="card-portrait">
            <div class="bg-img bg-2" />
            <div class="bg-img ol-1" />
            <h1>Network Sourced Data</h1>
            <p>Community data listed in the marketplace and made available via API or bulk download is expected to be monetized by the data provider receiving payments in tokens.</p>
          </div>
          <div class="card-portrait">
            <div class="bg-img bg-3" />
            <div class="bg-img ol-1" />
            <h1>Curated Data Sets</h1>
            <p>Low friction peer-to-peer mechanisms to publish, consume and monetize blockchain, custom and curated datasets</p>
          </div>
        </div>

        <div class="grid-column">
          <div class="card-portrait">
            <div class="bg-img bg-4" />
            <div class="bg-img ol-1" />
            <h1>Decentralized Validated Information</h1>
            <p>A blockchain data marketplace is global value proposition and flattens the world enabling peer-to-peer commerce on a global scale.</p>
          </div>
        </div>
      </div>
    </section>

    <section class="cta-form">
      <div class="cta-card">
        <div class="copy">
          <h1>Invest in Web3Data</h1>
          <h3>Gain early access to the token sale. Get validated as an investor</h3>
        </div>
        <div class="action">
          <button class="btn">Request Access</button>
        </div>
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
  margin: auto;
}

.card {
  margin: 30vh auto;
  position: relative;
  z-index: 10;
  text-align: center;

  p {
    max-width: 35vw;
    text-align: right;
  }
}

.background-stripe {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  z-index: 0;

  svg {
    // height: 100%;
    width: 100%;
  }
}

.card-portrait {
  background: $color5;
  border-radius: 6px;
  box-shadow: 0 1px 20px -5px rgba(0, 0, 0, 0.3);
  padding: 20px;
  position: relative;
  margin: auto;
  display: flex;
  justify-content: flex-end;
  flex-direction: column;
  align-items: flex-start;
  min-height: 30vh;
  text-align: left;

  h1 {
    font-size: 21pt;
    font-weight: 100;
  }

  h1,
  p {
    color: $white;
    margin: 0;
    position: relative;
    z-index: 10;
  }
}

.logo {
  width: 21vw;
  min-width: 200px;
}

.pg-title {
  text-indent: -9999px;
  font-size: 0px;
}

.grid {
  display: grid;
  grid-template-columns: 33.33% 33.33% 33.33%;
  margin: 0 20px;
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
    background: #f9f9f9;
    content: '';
    width: calc(100vw + 300px);
    height: 500px;
    transform: rotate(10deg);
    left: -150px;
    top: 75vh;
  }
}

.features {
  padding: 50px 0;
  margin-top: -30vh;

  .card-portrait {
    margin: 20px;
  }
}

.cta-form {
  background: $color2;
  border-top: 2px dashed #f9f9f9;
  border-bottom: 2px dashed darken($color2, 10%);
  display: flex;
  justify-content: center;
  padding: 120px 0;
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
    display: flex;
    padding: 40px;
    position: relative;
    margin: auto 0;
    z-index: 10;

    h1,
    h3 {
      margin: 0;
      text-align: left;
    }

    h1 {
      color: $color1;
      font-size: 24pt;
      font-weight: 500;
    }

    h3 {
      font-weight: 400;
    }

    .copy {
      margin-right: 60px;
    }

    .action {
      display: flex;
    }

    .btn {
      background: $color1;
      border-radius: 4px;
      color: $white;
      margin: auto;
      padding: 20px 30px;
    }
  }
}

.bg-img {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 0;
  content: '';
  background-size: cover;
  border-radius: 6px;
  overflow: hidden;

  &.bg-1 {
    background: url('/static/stairs.jpg') 50% 50% no-repeat;
  }

  &.bg-2 {
    background: url('/static/coffee.jpg') 50% 50% no-repeat;
  }

  &.bg-3 {
    background: url('/static/server.jpg') 50% 50% no-repeat;
  }

  &.bg-4 {
    background: url('/static/block.jpg') 50% 50% no-repeat;
  }

  &.ol-1 {
    background: transparentize($color3, 0.3);
    background: linear-gradient(
      141deg,
      rgba(14, 183, 164, 0.9) 0%,
      rgba(0, 35, 31, 0.9) 100%
    );
    z-index: 1;
  }
}
</style>
