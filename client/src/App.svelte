<script lang="ts">
import User from './User.svelte';

let click = function () {
  jose.age++;
  let person = document.querySelector('#person');
  person.innerHTML = '';
  Object.entries(jose).forEach((entry) => {
    let [key, obj] = entry;
    person.innerHTML += `${obj} <br>`;
  });
};

interface Person {
  name: string;
  age: number;
  [key: string]: any;
}

let jose: Person = {
  name: 'Jose',
  age: 10,
  school: 'ACR',
};
</script>

<main>
  <h1>Prueba</h1>
  <button on:click={click}> +1 </button>
  <p id="person" />
  <!-- <User /> -->
</main>

<style>
main {
  text-align: center;
  padding: 1em;
  max-width: 240px;
  margin: 0 auto;
}

h1 {
  color: #ff3e00;
  text-transform: uppercase;
  font-size: 4em;
  font-weight: 100;
}

@media (min-width: 640px) {
  main {
    max-width: none;
  }
}
</style>
