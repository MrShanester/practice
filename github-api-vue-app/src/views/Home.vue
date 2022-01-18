<template>
  <div class="home">
    <h1>
      A hand-picked and meticulously crafted list of curated frontends for the discerning developer, rated by
      popularity, for your convenience.
    </h1>
    <div v-for="repo in orderBy(repos, 'forks_count', -1)" v-bind:key="repo.id">
      <br />
      <div class="col d-flex justify-content-center">
        <div class="card" style="width: 18rem">
          <img v-bind:src="repo.avatar_url" v-bind:alt="repo.name" />
          <div class="selected">
            <div class="card-body">
              <p class="card-text"></p>
              <h2>{{ repo.name }}</h2>
              <br />
              <p>{{ repo.stargazers_count }} Stargazers</p>
              <p>{{ repo.watchers_count }} Watchers</p>
              <p>{{ repo.forks_count }} Forks</p>
              <p>
                <span>{{ (repo.watchers_count + repo.forks_count) / 100 }}</span>
                Popularity Points!
              </p>
              <!-- <p>{{ repo }}</p> -->
            </div>
          </div>
          <div class="selected2">
            <div class="col d-flex justify-content-center"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
h2 {
  color: rgb(53, 101, 150);
}
span {
  color: rgb(247, 35, 35);
}
</style>

<script>
// @ is an alias to /src
import axios from "axios";
import Vue2Filters from "vue2-filters";

export default {
  mixins: [Vue2Filters.mixin],

  data: function () {
    return {
      message: "hello",
      repos: [],
    };
  },

  created: function () {
    this.getHub();
  },

  methods: {
    getHub: function () {
      axios.get("https://api.github.com/repos/vuejs/vue").then((response) => {
        this.repos.push(response.data);
      });
      axios.get("https://api.github.com/repos/angular/angular.js").then((response) => {
        this.repos.push(response.data);
      });
      axios.get("https://api.github.com/repos/emberjs/ember.js").then((response) => {
        this.repos.push(response.data);
      });
      axios.get("https://api.github.com/repos/sveltejs/svelte").then((response) => {
        this.repos.push(response.data);
      });
      axios.get("https://api.github.com/repos/facebook/react").then((response) => {
        this.repos.push(response.data);
      });
    },
  },
};
</script>
